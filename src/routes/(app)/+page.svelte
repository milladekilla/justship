<script lang="ts">
	import type { PageData } from './$types';
	let { data }: { data: PageData } = $props();
	import * as Card from '$lib/components/ui/card/index.js';
	import * as Carousel from '$lib/components/ui/carousel/index.js';
	import { Button } from '$lib/components/ui/button';
</script>

<div class="relative min-h-screen -mt-14">
	<img src="/kzbbg.jpg" alt="" class="w-full h-full absolute object-cover object-top" />
	<div class="absolute inset-0 bg-primary/80 mix-blend-color"></div>
	<div class="inset-0 bg-primary/80 min-h-screen relative py-32">
		<div class="container mix-blend-normal">
			<div class="mx-auto max-w-2xl py-24 sm:py-24 lg:py-32 text-primary-foreground">
				<div class="text-center">
					<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
						Vítejte v Komunitní zahradě Bubeneč!
					</h1>
					<p class="my-8 text-lg font-medium text-pretty sm:text-xl/8">
						Pro sezónu 2026 jsou téměř všechny záhony obsazeny, pokud byste se rádi v budoucnu
						zapojili, ozvěte se nám:
					</p>
					<Button
						variant="secondary"
						size="lg"
						href="https://forms.gle/Ps3zyyfq5Dv1Lz1bA"
						target="_blank">Vyplnit dotazník</Button
					>
				</div>
			</div>

			<Carousel.Root class="w-full">
				<Carousel.Content class="-ms-1">
					<Carousel.Item class="ps-1 md:basis-1/2 lg:basis-1/3 overflow-hidden">
						<div class="p-1">
							<Card.Root class="overflow-hidden bg-primary p-0 border-0">
								<Card.Content class="flex relative aspect-square items-center justify-center p-0">
									<img
										src="/photo/podzim.jpg"
										alt=""
										class="w-full h-full object-cover object-top aspect-square"
									/>
									<div
										class="absolute left-0 right-0 bottom-0 px-6 py-4 bg-primary/80 text-primary-foreground"
									>
										Podzim na zahradě je krásný
									</div>
								</Card.Content>
							</Card.Root>
						</div>
					</Carousel.Item>
					<Carousel.Item class="ps-1 md:basis-1/2 lg:basis-1/3 overflow-hidden">
						<div class="p-1">
							<Card.Root class="overflow-hidden bg-primary p-0 border-0">
								<Card.Content class="flex relative aspect-square items-center justify-center p-0">
									<img
										src="/photo/swap.jpg"
										alt=""
										class="w-full h-full object-cover object-top aspect-square"
									/>
									<div
										class="absolute left-0 right-0 bottom-0 px-6 py-4 bg-primary/80 text-primary-foreground"
									>
										V dubnu bývá v komunitní zahradě Swap, můžete se na něj těšit i letos
									</div>
								</Card.Content>
							</Card.Root>
						</div>
					</Carousel.Item>
					<Carousel.Item class="ps-1 md:basis-1/2 lg:basis-1/3 overflow-hidden">
						<div class="p-1">
							<Card.Root class="overflow-hidden bg-primary p-0 border-0">
								<Card.Content class="flex relative aspect-square items-center justify-center p-0">
									<img
										src="/photo/redkev.jpg"
										alt=""
										class="w-full h-full object-cover object-top aspect-square"
									/>
									<div
										class="absolute left-0 right-0 bottom-0 px-6 py-4 bg-primary/80 text-primary-foreground"
									>
										První úroda roku 2025
									</div>
								</Card.Content>
							</Card.Root>
						</div>
					</Carousel.Item>
					<!-- {#each Array(5) as _, i (i)}
						<Carousel.Item class="ps-1 md:basis-1/2 lg:basis-1/3 overflow-hidden">
							<div class="p-1">
								<Card.Root class="overflow-hidden bg-primary p-0 border-0">
									<Card.Content class="flex relative aspect-square items-center justify-center p-0">
										<img src="/kzbbg.jpg" alt="" class="w-full h-full object-cover object-top aspect-square" />
										<div
											class="absolute left-0 right-0 bottom-0 px-6 py-4 bg-primary/80 text-primary-foreground"
										>
											{i + 1} Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem
											cupidatat commodo. Elit sunt amet fugiat veniam occaecat.
										</div>
									</Card.Content>
								</Card.Root>
							</div>
						</Carousel.Item>
					{/each} -->
				</Carousel.Content>
				<Carousel.Previous />
				<Carousel.Next />
			</Carousel.Root>
		</div>
	</div>
</div>
