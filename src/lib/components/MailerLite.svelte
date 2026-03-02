<script lang="ts">
	import { Button } from './ui/button';
	import { Input } from './ui/input';
</script>

<div id="mlb2-37076346" class="ml-form-embedContainer ml-subscribe-form ml-subscribe-form-37076346">
	<div class="ml-form-align-center">
		<div class="ml-form-embedWrapper embedForm">
			<div class="ml-form-embedBody ml-form-embedBodyHorizontal row-form">
				<div class="ml-form-embedContent" style=" ">
					<h4 class="mb-3 text-lg font-medium">Odebírejte náš newsletter</h4>
				</div>

				<form
					class="ml-block-form"
					action="https://assets.mailerlite.com/jsonp/1122968/forms/179231341580126053/subscribe"
					data-code=""
					method="post"
					target="_blank"
				>
					<div class="ml-form-formContent horozintalForm">
						<div class="ml-form-horizontalRow flex w-full gap-2 mb-3">
							<div class="ml-input-horizontal flex-1">
								<div style="width: 100%;" class="horizontal-fields">
									<div class="ml-field-group ml-field-email ml-validate-email ml-validate-required">
										<!-- input -->
										<Input
											type="email"
											class="form-control"
											data-inputmask=""
											name="fields[email]"
											placeholder="E-mail"
											autocomplete="email"
										/>
										<!-- /input -->
									</div>
								</div>
							</div>

							<div class="ml-button-horizontal primary">
								<Button type="submit">Odebírat</Button>
								<button disabled="disabled" style="display: none;" type="button" class="loading">
									<div class="ml-form-embedSubmitLoad"></div>
									<span class="sr-only">Loading...</span>
								</button>
							</div>
						</div>
					</div>

					<!-- Privacy policy -->
					<div class="ml-form-embedPermissions" style="">
						<div class="ml-form-embedPermissionsContent horizontal privacy-policy">
							<p class="text-muted-foreground text-sm">
								Z odběru se můžete kdykoli odhlásit. Podrobnosti naleznete v našich <a
									href="https://docs.google.com/document/d/1jXTsaH9TI5TlbMx4FtnwENeQcHFzFC-Px0-jeunWQhM/edit?usp=sharing"
									target="_blank">informacích o zpracování osobních údajů</a
								>.
							</p>
						</div>
					</div>
					<!-- /Privacy policy -->

					<input type="hidden" name="ml-submit" value="1" />
					<div class="ml-mobileButton-horizontal hidden">
						<Button type="submit">Odebírat</Button>
						<button disabled="disabled" style="display: none;" type="button" class="loading">
							<div class="ml-form-embedSubmitLoad"></div>
							<span class="sr-only">Loading...</span>
						</button>
					</div>
					<input type="hidden" name="anticsrf" value="true" />
				</form>
			</div>

			<div class="ml-form-successBody row-success" style="display: none">
				<div class="ml-form-successContent">
					<h4 class="mb-3 text-lg font-medium">Už to bude!</h4>
					<p class="text-muted-foreground">
						Nezapomeňte potvrdit adresu ve schránce. A pozor zpráva může být ve spamu!
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
