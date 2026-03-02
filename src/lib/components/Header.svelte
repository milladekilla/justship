<script lang="ts">
	import { PUBLIC_PROJECT_NAME } from '$env/static/public';

	import { page } from '$app/stores';
	import { buttonVariants } from './ui/button';
	import LogoutButton from './login/LogoutButton.svelte';
	import { LeafyGreen } from 'lucide-svelte';
	import MainMenu from '$lib/components/MainMenu.svelte';
</script>

<header
	class="bg-background/95 supports-[backdrop-filter]:bg-background/90 sticky top-0 z-50 w-full backdrop-blur"
>
	<div class="container flex h-14 items-center">
		<div class="mr-4 flex justify-between w-full">
			<a href="/" class="mr-6 flex items-center space-x-2">
				<LeafyGreen class="h-8 w-8" />
				<span class="font-bold inline-block">{PUBLIC_PROJECT_NAME}</span></a
			>
			<div>
				{#if $page.data.user}
					<LogoutButton />
				{:else}
					<a href="/login" class={buttonVariants({ variant: 'ghost' })}>Sign in</a>
				{/if}
			</div>
		</div>
	</div>
</header>
