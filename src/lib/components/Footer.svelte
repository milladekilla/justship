<script lang="ts">
	import MailerLite from '$lib/components/MailerLite.svelte';
	import { Instagram, Facebook } from 'lucide-svelte';
</script>

<footer>
	<div class="container grid grid-cols-6 gap-6 px-4 py-8 sm:gap-8 sm:px-6 sm:py-16 md:py-24">
		<div class="col-span-full flex flex-col items-start gap-4 lg:col-span-2">
			<a href="#"
				><div class="flex items-center gap-3">
					<svg
						width="1em"
						height="1em"
						viewBox="0 0 328 329"
						fill="none"
						xmlns="http://www.w3.org/2000/svg"
						class="size-8.5"
						><rect y="0.5" width="328" height="328" rx="164" fill="black" class="dark:fill-white"
						></rect><path
							d="M165.018 72.3008V132.771C165.018 152.653 148.9 168.771 129.018 168.771H70.2288"
							stroke="white"
							stroke-width="20"
							class="dark:stroke-black"
						></path><path
							d="M166.627 265.241L166.627 204.771C166.627 184.889 182.744 168.771 202.627 168.771L261.416 168.771"
							stroke="white"
							stroke-width="20"
							class="dark:stroke-black"
						></path><line
							x1="238.136"
							y1="98.8184"
							x2="196.76"
							y2="139.707"
							stroke="white"
							stroke-width="20"
							class="dark:stroke-black"
						></line><line
							x1="135.688"
							y1="200.957"
							x2="94.3128"
							y2="241.845"
							stroke="white"
							stroke-width="20"
							class="dark:stroke-black"
						></line><line
							x1="133.689"
							y1="137.524"
							x2="92.5566"
							y2="96.3914"
							stroke="white"
							stroke-width="20"
							class="dark:stroke-black"
						></line><line
							x1="237.679"
							y1="241.803"
							x2="196.547"
							y2="200.671"
							stroke="white"
							stroke-width="20"
							class="dark:stroke-black"
						></line></svg
					><span class="text-xl font-semibold">Kde nás najdete</span>
				</div></a
			>
			<p class="text-muted-foreground">
				Komunitní zahradu najdete v Praze 6 Bubenči, tam kde se sbýhají ulice Antonína Čermáka,
				Maďarská, Mlýnská a Goeteho, v oblasti jinak známé jako "Za kanadou", naproti restauraci U
				Pramene, poblíž zastávky autobusu 131 Nemocnice Bubeneč.
			</p>
			<div
				data-orientation="horizontal"
				role="none"
				data-slot="separator"
				class="bg-border shrink-0 data-[orientation=horizontal]:h-px data-[orientation=horizontal]:w-full data-[orientation=vertical]:h-full data-[orientation=vertical]:w-px !w-35"
			></div>
			<div class="flex items-center gap-4">
				<a href="#" target="#"><Facebook class="h-4 w-4" /> </a>
				<a href="#" target="#"><Instagram class="h-4 w-4" /></a>
			</div>
		</div>
		<div class="col-span-full grid grid-cols-2 gap-6 sm:grid-cols-4 lg:col-span-4 lg:gap-8">
			<div class="col-span-full flex flex-col gap-5 sm:col-span-2 overflow-hidden h-54">
				<iframe
					src="https://www.google.com/maps/d/u/0/embed?mid=1ECGlAHh7W_L1LpNF5Ubq_OedkLsifFM&ehbc=2E312F&noprof=1"
					class="w-full"
					style="height: calc(100% + 60px + 90px); margin-top: -60px; margin-bottom: -90px;"
				></iframe>
			</div>
			<div class="col-span-full flex flex-col gap-5 sm:col-span-2">
				<div>
					<MailerLite />
				</div>
				<div
					data-orientation="horizontal"
					role="none"
					data-slot="separator"
					class="bg-border shrink-0 data-[orientation=horizontal]:h-px data-[orientation=horizontal]:w-full data-[orientation=vertical]:h-full data-[orientation=vertical]:w-px"
				></div>
				<div class="flex flex-wrap gap-4">
					<img src="/logo_praha6.svg" alt="" class="h-6" />
				</div>
			</div>
		</div>
	</div>
	<div
		data-orientation="horizontal"
		role="none"
		data-slot="separator"
		class="bg-border shrink-0 data-[orientation=horizontal]:h-px data-[orientation=horizontal]:w-full data-[orientation=vertical]:h-full data-[orientation=vertical]:w-px"
	></div>
	<div class="mx-auto flex max-w-7xl justify-center px-4 py-6 sm:px-6">
		<p class="text-center font-medium text-balance">
			©2026<!-- --> <a href="#" class="link-animated">Komunitní zahrada Bubeneč</a>, Made with ❤️
			by <a href="https://www.majlo.sh" target="_blank">majlo.sh</a>.
		</p>
	</div>
</footer>
