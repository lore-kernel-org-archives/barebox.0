Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdXyE-0004bD-F1
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 07:56:21 +0000
Date: Tue, 14 Feb 2017 08:55:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170214075556.gzafi4wt2xqu7whd@pengutronix.de>
References: <1487005616-19189-1-git-send-email-peda@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1487005616-19189-1-git-send-email-peda@axentia.se>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] at91: serial: pullup RX pins, do not pullup TX pins
To: Peter Rosin <peda@axentia.se>
Cc: barebox@lists.infradead.org

On Mon, Feb 13, 2017 at 06:06:56PM +0100, Peter Rosin wrote:
> We have a number of sama5d3 devices that sometimes hangs at the
> barebox prompt during boot due to floating RX pins. This patch
> fixes the problem for us (and probably others). It is similar in
> nature to linux kernel commit 138c2b2f175b ("ARM: dts: at91: fixes
> dbgu pinctrl, set pullup on rx, clear pullup on tx")
> 
> While at it, remove pointless waste of power that the pullup of
> the TX pins causes and fix the signal comments for SAMA5D4.
> 
> Signed-off-by: Peter Rosin <peda@axentia.se>
> ---
>  arch/arm/mach-at91/at91rm9200_devices.c  | 20 ++++++++++----------
>  arch/arm/mach-at91/at91sam9260_devices.c | 28 ++++++++++++++--------------
>  arch/arm/mach-at91/at91sam9261_devices.c | 16 ++++++++--------
>  arch/arm/mach-at91/at91sam9263_devices.c | 16 ++++++++--------
>  arch/arm/mach-at91/at91sam9g45_devices.c | 20 ++++++++++----------
>  arch/arm/mach-at91/at91sam9n12_devices.c | 20 ++++++++++----------
>  arch/arm/mach-at91/at91sam9x5_devices.c  | 20 ++++++++++----------
>  arch/arm/mach-at91/sama5d3_devices.c     | 12 ++++++------
>  arch/arm/mach-at91/sama5d4_devices.c     | 32 ++++++++++++++++----------------
>  9 files changed, 92 insertions(+), 92 deletions(-)
> 
> This is resend with the correct barebox ML address (hopefully). Sorry about
> that...

Appearantly it was the correct address ;)

Applied, thanks

Sascha


> 
> Cheers,
> peda
> 
> diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
> index 7b68cda..a110ee3 100644
> --- a/arch/arm/mach-at91/at91rm9200_devices.c
> +++ b/arch/arm/mach-at91/at91rm9200_devices.c
> @@ -250,16 +250,16 @@ void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata
>  
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PA30, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PA31, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PA30, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PA31, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA17, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PA18, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PA17, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PA18, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_CTS)
>  		at91_set_A_periph(AT91_PIN_PA20, 0);	/* CTS0 */
> @@ -277,8 +277,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB20, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PB21, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PB20, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PB21, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RI)
>  		at91_set_A_periph(AT91_PIN_PB18, 0);	/* RI1 */
> @@ -298,8 +298,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA22, 0);		/* RXD2 */
> -	at91_set_A_periph(AT91_PIN_PA23, 1);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PA22, 1);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PA23, 0);		/* TXD2 */
>  
>  	if (pins & ATMEL_UART_CTS)
>  		at91_set_B_periph(AT91_PIN_PA30, 0);	/* CTS2 */
> @@ -311,8 +311,8 @@ resource_size_t __init at91_configure_usart2(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart3(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PA5, 1);		/* TXD3 */
> -	at91_set_B_periph(AT91_PIN_PA6, 0);		/* RXD3 */
> +	at91_set_B_periph(AT91_PIN_PA5, 0);		/* TXD3 */
> +	at91_set_B_periph(AT91_PIN_PA6, 1);		/* RXD3 */
>  
>  	if (pins & ATMEL_UART_CTS)
>  		at91_set_B_periph(AT91_PIN_PB1, 0);	/* CTS3 */
> diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
> index 67c4ea8..99919b3 100644
> --- a/arch/arm/mach-at91/at91sam9260_devices.c
> +++ b/arch/arm/mach-at91/at91sam9260_devices.c
> @@ -261,16 +261,16 @@ void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata
>  
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PB14, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PB15, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PB14, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PB15, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PB5, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PB4, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PB5, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PB26, 0);	/* RTS0 */
> @@ -290,8 +290,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PB7, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PB6, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PB7, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PB28, 0);	/* RTS1 */
> @@ -303,8 +303,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD2 */
> -	at91_set_A_periph(AT91_PIN_PB9, 0);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PB8, 0);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PB9, 1);		/* RXD2 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PA4, 0);	/* RTS2 */
> @@ -316,8 +316,8 @@ resource_size_t __init at91_configure_usart2(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart3(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB10, 1);		/* TXD3 */
> -	at91_set_A_periph(AT91_PIN_PB11, 0);		/* RXD3 */
> +	at91_set_A_periph(AT91_PIN_PB10, 0);		/* TXD3 */
> +	at91_set_A_periph(AT91_PIN_PB11, 1);		/* RXD3 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PC8, 0);	/* RTS3 */
> @@ -329,16 +329,16 @@ resource_size_t __init at91_configure_usart3(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart4(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PA31, 1);		/* TXD4 */
> -	at91_set_B_periph(AT91_PIN_PA30, 0);		/* RXD4 */
> +	at91_set_B_periph(AT91_PIN_PA31, 0);		/* TXD4 */
> +	at91_set_B_periph(AT91_PIN_PA30, 1);		/* RXD4 */
>  
>  	return AT91SAM9260_BASE_US4;
>  }
>  
>  resource_size_t __init at91_configure_usart5(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB12, 1);		/* TXD5 */
> -	at91_set_A_periph(AT91_PIN_PB13, 0);		/* RXD5 */
> +	at91_set_A_periph(AT91_PIN_PB12, 0);		/* TXD5 */
> +	at91_set_A_periph(AT91_PIN_PB13, 1);		/* RXD5 */
>  
>  	return AT91SAM9260_BASE_US5;
>  }
> diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
> index 620ed65..e63e0e7 100644
> --- a/arch/arm/mach-at91/at91sam9261_devices.c
> +++ b/arch/arm/mach-at91/at91sam9261_devices.c
> @@ -265,16 +265,16 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
>  
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PA9, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PA10, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PC8, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PC9, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PC8, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PC9, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PC10, 0);	/* RTS0 */
> @@ -286,8 +286,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PC12, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PC13, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PC12, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PC13, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PA12, 0);	/* RTS1 */
> @@ -299,8 +299,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PC15, 0);		/* RXD2 */
> -	at91_set_A_periph(AT91_PIN_PC14, 1);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PC15, 1);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PC14, 0);		/* TXD2 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PA15, 0);	/* RTS2*/
> diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
> index a3683e5..559b77e 100644
> --- a/arch/arm/mach-at91/at91sam9263_devices.c
> +++ b/arch/arm/mach-at91/at91sam9263_devices.c
> @@ -296,16 +296,16 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
>  
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PC30, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PC31, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PC30, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PC31, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA26, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PA27, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PA26, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PA27, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PA28, 0);	/* RTS0 */
> @@ -317,8 +317,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PD0, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PD1, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PD0, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PD1, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PD7, 0);	/* RTS1 */
> @@ -330,8 +330,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PD2, 1);		/* TXD2 */
> -	at91_set_A_periph(AT91_PIN_PD3, 0);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PD2, 0);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PD3, 1);		/* RXD2 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PD5, 0);	/* RTS2 */
> diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
> index bad7f9c..bc41320 100644
> --- a/arch/arm/mach-at91/at91sam9g45_devices.c
> +++ b/arch/arm/mach-at91/at91sam9g45_devices.c
> @@ -213,16 +213,16 @@ void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_de
>  
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PB12, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PB13, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PB12, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PB13, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB19, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PB18, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PB19, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PB18, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PB17, 0);	/* RTS0 */
> @@ -234,8 +234,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PB5, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PB4, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PB5, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PD16, 0);	/* RTS1 */
> @@ -247,8 +247,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD2 */
> -	at91_set_A_periph(AT91_PIN_PB7, 0);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PB6, 0);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PB7, 1);		/* RXD2 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PC9, 0);	/* RTS2 */
> @@ -260,8 +260,8 @@ resource_size_t __init at91_configure_usart2(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart3(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD3 */
> -	at91_set_A_periph(AT91_PIN_PB9, 0);		/* RXD3 */
> +	at91_set_A_periph(AT91_PIN_PB8, 0);		/* TXD3 */
> +	at91_set_A_periph(AT91_PIN_PB9, 1);		/* RXD3 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PA23, 0);	/* RTS3 */
> diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
> index bac023f..84c871c 100644
> --- a/arch/arm/mach-at91/at91sam9n12_devices.c
> +++ b/arch/arm/mach-at91/at91sam9n12_devices.c
> @@ -370,16 +370,16 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
>  #if defined(CONFIG_DRIVER_SERIAL_ATMEL)
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PA9, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PA10, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA0, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PA1, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PA0, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PA1, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PA2, 0);	/* RTS0 */
> @@ -391,8 +391,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA5, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PA6, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PA5, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PA6, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_C_periph(AT91_PIN_PC27, 0);	/* RTS1 */
> @@ -404,8 +404,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA7, 1);		/* TXD2 */
> -	at91_set_A_periph(AT91_PIN_PA8, 0);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PA7, 0);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PA8, 1);		/* RXD2 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS2 */
> @@ -417,8 +417,8 @@ resource_size_t __init at91_configure_usart2(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart3(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PC22, 1);		/* TXD3 */
> -	at91_set_B_periph(AT91_PIN_PC23, 0);		/* RXD3 */
> +	at91_set_B_periph(AT91_PIN_PC22, 0);		/* TXD3 */
> +	at91_set_B_periph(AT91_PIN_PC23, 1);		/* RXD3 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PC24, 0);	/* RTS3 */
> diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
> index 34537d8..d7ddda4 100644
> --- a/arch/arm/mach-at91/at91sam9x5_devices.c
> +++ b/arch/arm/mach-at91/at91sam9x5_devices.c
> @@ -453,16 +453,16 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
>  #if defined(CONFIG_DRIVER_SERIAL_ATMEL)
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PA9, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PA10, 0);		/* DTXD */
>  
>  	return AT91_BASE_SYS + AT91_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA0, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PA1, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PA0, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PA1, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PA2, 0);	/* RTS0 */
> @@ -474,8 +474,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA5, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PA6, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PA5, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PA6, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_C_periph(AT91_PIN_PC27, 0);	/* RTS1 */
> @@ -487,8 +487,8 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PA7, 1);		/* TXD2 */
> -	at91_set_A_periph(AT91_PIN_PA8, 0);		/* RXD2 */
> +	at91_set_A_periph(AT91_PIN_PA7, 0);		/* TXD2 */
> +	at91_set_A_periph(AT91_PIN_PA8, 1);		/* RXD2 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS2 */
> @@ -500,8 +500,8 @@ resource_size_t __init at91_configure_usart2(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart3(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PC22, 1);		/* TXD3 */
> -	at91_set_B_periph(AT91_PIN_PC23, 0);		/* RXD3 */
> +	at91_set_B_periph(AT91_PIN_PC22, 0);		/* TXD3 */
> +	at91_set_B_periph(AT91_PIN_PC23, 1);		/* RXD3 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_B_periph(AT91_PIN_PC24, 0);	/* RTS3 */
> diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
> index 3fdfca8..c6f5e3a 100644
> --- a/arch/arm/mach-at91/sama5d3_devices.c
> +++ b/arch/arm/mach-at91/sama5d3_devices.c
> @@ -464,16 +464,16 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
>  #if defined(CONFIG_DRIVER_SERIAL_ATMEL)
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PB30, 0);		/* DRXD */
> -	at91_set_A_periph(AT91_PIN_PB31, 1);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PB30, 1);		/* DRXD */
> +	at91_set_A_periph(AT91_PIN_PB31, 0);		/* DTXD */
>  
>  	return AT91_BASE_DBGU1;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PD18, 1);		/* TXD0 */
> -	at91_set_A_periph(AT91_PIN_PD17, 0);		/* RXD0 */
> +	at91_set_A_periph(AT91_PIN_PD18, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PD17, 1);		/* RXD0 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PD16, 0);	/* RTS0 */
> @@ -485,8 +485,8 @@ resource_size_t __init at91_configure_usart0(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PB29, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PB28, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PB29, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PB28, 1);		/* RXD1 */
>  
>  	if (pins & ATMEL_UART_RTS)
>  		at91_set_A_periph(AT91_PIN_PB27, 0);	/* RTS1 */
> diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
> index e1b0a64..c2f171a 100644
> --- a/arch/arm/mach-at91/sama5d4_devices.c
> +++ b/arch/arm/mach-at91/sama5d4_devices.c
> @@ -430,24 +430,24 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
>  #if defined(CONFIG_DRIVER_SERIAL_ATMEL)
>  resource_size_t __init at91_configure_dbgu(void)
>  {
> -	at91_set_A_periph(AT91_PIN_PB25, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PB24, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PB25, 0);		/* DTXD */
> +	at91_set_A_periph(AT91_PIN_PB24, 1);		/* DRXD */
>  
>  	return SAMA5D4_BASE_DBGU;
>  }
>  
>  resource_size_t __init at91_configure_usart0(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PD13, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PD12, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PD13, 0);		/* TXD0 */
> +	at91_set_A_periph(AT91_PIN_PD12, 1);		/* RXD0 */
>  
>  	return SAMA5D4_BASE_USART0;
>  }
>  
>  resource_size_t __init at91_configure_usart1(unsigned pins)
>  {
> -	at91_set_A_periph(AT91_PIN_PD17, 1);		/* TXD1 */
> -	at91_set_A_periph(AT91_PIN_PD16, 0);		/* RXD1 */
> +	at91_set_A_periph(AT91_PIN_PD17, 0);		/* TXD1 */
> +	at91_set_A_periph(AT91_PIN_PD16, 1);		/* RXD1 */
>  
>  	return SAMA5D4_BASE_USART1;
>  }
> @@ -455,40 +455,40 @@ resource_size_t __init at91_configure_usart1(unsigned pins)
>  
>  resource_size_t __init at91_configure_usart2(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PB5, 1);		/* TXD1 */
> -	at91_set_B_periph(AT91_PIN_PB4, 0);		/* RXD1 */
> +	at91_set_B_periph(AT91_PIN_PB5, 0);		/* TXD2 */
> +	at91_set_B_periph(AT91_PIN_PB4, 1);		/* RXD2 */
>  
>  	return SAMA5D4_BASE_USART2;
>  }
>  
>  resource_size_t __init at91_configure_usart3(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PE17, 1);		/* TXD1 */
> -	at91_set_B_periph(AT91_PIN_PE16, 0);		/* RXD1 */
> +	at91_set_B_periph(AT91_PIN_PE17, 0);		/* TXD3 */
> +	at91_set_B_periph(AT91_PIN_PE16, 1);		/* RXD3 */
>  
>  	return SAMA5D4_BASE_USART3;
>  }
>  
>  resource_size_t __init at91_configure_usart4(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PE27, 1);		/* TXD1 */
> -	at91_set_B_periph(AT91_PIN_PE26, 0);		/* RXD1 */
> +	at91_set_B_periph(AT91_PIN_PE27, 0);		/* TXD4 */
> +	at91_set_B_periph(AT91_PIN_PE26, 1);		/* RXD4 */
>  
>  	return SAMA5D4_BASE_USART4;
>  }
>  
>  resource_size_t __init at91_configure_usart5(unsigned pins)
>  {
> -	at91_set_B_periph(AT91_PIN_PE30, 1);		/* TXD1 */
> -	at91_set_B_periph(AT91_PIN_PE29, 0);		/* RXD1 */
> +	at91_set_B_periph(AT91_PIN_PE30, 0);		/* UTXD0 */
> +	at91_set_B_periph(AT91_PIN_PE29, 1);		/* URXD0 */
>  
>  	return SAMA5D4_BASE_UART0;
>  }
>  
>  resource_size_t __init at91_configure_usart6(unsigned pins)
>  {
> -	at91_set_C_periph(AT91_PIN_PC26, 1);		/* TXD1 */
> -	at91_set_C_periph(AT91_PIN_PC25, 0);		/* RXD1 */
> +	at91_set_C_periph(AT91_PIN_PC26, 0);		/* UTXD1 */
> +	at91_set_C_periph(AT91_PIN_PC25, 1);		/* URXD1 */
>  
>  	return SAMA5D4_BASE_UART1;
>  }
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
