Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPwjP-0007n4-9p
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 16:19:13 +0000
Date: Tue, 18 Mar 2014 17:18:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140318161847.GW17250@pengutronix.de>
References: <CF4C8000.DD58%ivor@veriline.co.za>
 <CF4C8306.DD5F%ivor@veriline.co.za>
 <20140317120956.GV24917@pengutronix.de>
 <CF4CC78F.DDE2%ivor@veriline.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CF4CC78F.DDE2%ivor@veriline.co.za>
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
Subject: Re: GPIO setting
To: Ivor Kruger <ivor@veriline.co.za>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Mar 17, 2014 at 03:43:36PM +0200, Ivor Kruger wrote:
> Thanks for the reply. So I take it I need to edit the mux.c file in the
> PCM049(which is the one I use) board directory. I changed the lines as
> below:
> 
> {I2C4_SDA, (PTU | IEN | M0)},					/* i2c4_sda */
> 	{MCSPI1_CLK, (M3)},					/* gpio134 */
> 	{MCSPI1_SOMI, (M3)},					/* gpio135 */
> 	{MCSPI1_SIMO, (M3)},					/* gpio136 */
> 	{MCSPI1_CS0, (M3)},					/* gpio137 */
> 	{MCSPI1_CS1, (M3)},					/* gpio138 */
> 	{MCSPI1_CS2, (M3)},				/* gpio139 */
> 	{MCSPI1_CS3, (M3)},					/* gpio140 */
> 	{UART3_CTS_RCTX, (PTU | IEN | M0)},				/* uart3_tx */
> 
> This still did not allow me to change pin conditions. So in the board.c
> file for the PCM049, I also added these lines to force the config of the
> pins:
> 
>  omap_add_display(&pcm049_fb_data);
> 	gpio_direction_output(135, 1);
> 	gpio_direction_output(136, 1);
> 	gpio_direction_output(137, 1);
> 	gpio_direction_output(138, 1);
> 	gpio_direction_output(139, 1);
> 	gpio_direction_output(140, 1);
> 
> 
> If I then do the gpiolib command inbarebox, the pins are indicated as gpio
> as below:
> 
> gpio  133:     false
> gpio  134:     false
> gpio  135:      true  gpio
> gpio  136:      true  gpio
> gpio  137:      true  gpio
> gpio  138:      true  gpio
> gpio  139:      true  gpio
> gpio  140:      true  gpio
> gpio  141:     false
> gpio  142:     false
> gpio  143:     false
> 
> BUT using the commands:
> 
> gpio_direction_output 135 0
> 
> And 
> 
> gpio_direction_output 135 1
> 
> Still does not change the pin condition.
> 
> Is there something else I still need to do?

Generally that's all you have to do: Configure pinmux and use gpio
functions. I'm not very familiar with OMAPs. How does the translation
from MCSPI1_SOMI to gpio135 work? Are you sure the gpio number is
correct? Is gpio generally M3 and what do the other flags lie IEN and
PTU do? I have no idea what goes wrong here, but that would be the next
places I would look at.

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
