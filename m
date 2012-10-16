Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOEcc-0000AX-Ox
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 21:24:19 +0000
Date: Tue, 16 Oct 2012 23:24:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016212416.GC27665@pengutronix.de>
References: <1350410685-46202-1-git-send-email-carlo.caione@gmail.com>
 <1350410685-46202-5-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350410685-46202-5-git-send-email-carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] BCM2835: add support (arch)
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 08:04:44PM +0200, Carlo Caione wrote:
> +
> +static struct clk ref_3_clk = {
> +	.rate = 3 * 1000 * 1000,
> +};
> +
> +static struct clk ref_1_clk = {
> +	.rate = 1 * 1000 * 1000,
> +};

Add a 'select COMMON_CLK' to your Kconfig and do a:

	clk_dummy = clk_fixed("dummy", 0);
	clk_ref_3 = clk_fixed("ref3", 3 * 1000 * 1000);
	clk_ref_1 = clk_fixed("ref1", 1 * 1000 * 1000);

Then you can drop your clk code and get a clk_dump command
which you can use to see what clocks you have.

> +static int bcm2835_gpio_init(void)
> +{
> +	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
> +	return 0;
> +}
> +coredevice_initcall(bcm2835_gpio_init);
> +
> +static int bcm2835_clkdev_init(void)
> +{
> +	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
> +	return 0;
> +}
> +postcore_initcall(bcm2835_clkdev_init);
> +
> +static int bcm2835_clocksource_init(void)
> +{
> +	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
> +	return 0;
> +}
> +coredevice_initcall(bcm2835_clocksource_init);
> +

Please consolidate the initcalls. A single function for the three above
is enough.

> +void bcm2835_register_uart(void)

Please add the UART index to the function name.

> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

The address is wrong. Please remove this paragraph completly

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
