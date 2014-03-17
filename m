Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vm01-scratchy.webonline.biz ([41.86.105.82])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPXtn-00034b-Hx
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 13:48:16 +0000
Date: Mon, 17 Mar 2014 15:43:36 +0200
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CF4CC78F.DDE2%ivor@veriline.co.za>
References: <CF4C8000.DD58%ivor@veriline.co.za>
 <CF4C8306.DD5F%ivor@veriline.co.za>
 <20140317120956.GV24917@pengutronix.de>
In-Reply-To: <20140317120956.GV24917@pengutronix.de>
Mime-version: 1.0
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
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Thanks for the reply. So I take it I need to edit the mux.c file in the
PCM049(which is the one I use) board directory. I changed the lines as
below:

{I2C4_SDA, (PTU | IEN | M0)},					/* i2c4_sda */
	{MCSPI1_CLK, (M3)},					/* gpio134 */
	{MCSPI1_SOMI, (M3)},					/* gpio135 */
	{MCSPI1_SIMO, (M3)},					/* gpio136 */
	{MCSPI1_CS0, (M3)},					/* gpio137 */
	{MCSPI1_CS1, (M3)},					/* gpio138 */
	{MCSPI1_CS2, (M3)},				/* gpio139 */
	{MCSPI1_CS3, (M3)},					/* gpio140 */
	{UART3_CTS_RCTX, (PTU | IEN | M0)},				/* uart3_tx */

This still did not allow me to change pin conditions. So in the board.c
file for the PCM049, I also added these lines to force the config of the
pins:

 omap_add_display(&pcm049_fb_data);
	gpio_direction_output(135, 1);
	gpio_direction_output(136, 1);
	gpio_direction_output(137, 1);
	gpio_direction_output(138, 1);
	gpio_direction_output(139, 1);
	gpio_direction_output(140, 1);


If I then do the gpiolib command inbarebox, the pins are indicated as gpio
as below:

gpio  133:     false
gpio  134:     false
gpio  135:      true  gpio
gpio  136:      true  gpio
gpio  137:      true  gpio
gpio  138:      true  gpio
gpio  139:      true  gpio
gpio  140:      true  gpio
gpio  141:     false
gpio  142:     false
gpio  143:     false

BUT using the commands:

gpio_direction_output 135 0

And 

gpio_direction_output 135 1

Still does not change the pin condition.

Is there something else I still need to do?

Thanks
Ivor







On 2014/03/17, 2:09 PM, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:

>On Mon, Mar 17, 2014 at 10:47:06AM +0200, Ivor Kruger wrote:
>> Hi, sure this is a quick and easy question for the group?
>> 
>> On the OMAP4430, using the command from within barebox prompt to
>>configure
>> a GPIO for testing hardware:
>> 
>> gpio_direction_output 140 0
>> 
>> Should this be sufficient to set the gpio pin low, or is it required to
>> still do some pin muxing as well?
>
>The gpio functions only configure the gpio controller. If this pin is
>not gpio by default, you have to configure the pinmux controller aswell.
>There is no way to do that on the barebox commandline other than direct
>register
>writes to the pinmux controller.
>
>Sascha
>
>-- 
>Pengutronix e.K.                           |                             |
>Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
