Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSbui-0005LW-HG
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 07:09:05 +0000
Date: Thu, 7 Nov 2019 08:09:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191107070902.6ogiju2sffolbblg@pengutronix.de>
References: <20191106102149.6858-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106102149.6858-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 0/6] ARM: psci: add PSCI client driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 06, 2019 at 11:21:43AM +0100, Ahmad Fatoum wrote:
> On platforms like the ARM STM32MP and the ARM64 Layerscape, firmware
> (i.e. barebox) is expected to fixup the correct PSCI version into the
> Linux device tree, so functionality like system reset via PSCI works.
> 
> Add a generic client driver that handles this and enable its usage for
> the STM32MP.
> 
> v1 -> v2:
>   - changed some erroneous commit message headers
>   - squashed PSCI system reset driver into PSCI client code (Sascha)
>   - Made the new CONFIG_ARM_PSCI_CLIENT selectable (Sascha)
>   - Added help text for CONFIG_ARM_PSCI_CLIENT
>   - Added -ENOSYS returning stubs for when barebox is compiled without
>     CONFIG_ARM_PSCI_CLIENT
>   - treat failure to register reset and/or poweroff handler in barebox
>     as warnings not errors
> 
> Ahmad Fatoum (6):
>   ARM: psci: translate PSCI error codes in smc command
>   ARM: psci: use CONFIG_ARM_PSCI_DEBUG for smc command
>   ARM: psci: wire in smc command help
>   ARM: psci: implement PSCI client driver
>   ARM: stm32mp: select ARM_USE_COMPRESSED_DTB for the whole arch
>   ARM: dts: stm32mp: report psci v0.2 at least

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
