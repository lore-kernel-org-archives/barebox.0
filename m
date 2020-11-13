Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdWpN-0005VM-J7
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 11:01:14 +0000
References: <1605257501.218157342@f555.i.mail.ru>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <491c6551-295b-c39f-538a-50d67e567b55@pengutronix.de>
Date: Fri, 13 Nov 2020 12:01:10 +0100
MIME-Version: 1.0
In-Reply-To: <1605257501.218157342@f555.i.mail.ru>
Content-Language: en-US
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
Subject: Re: i.MX6Q ldb after 2019.02
To: Alexander Shiyan <shc_work@mail.ru>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On 11/13/20 9:51 AM, Alexander Shiyan wrote:
> Hello All.
> 
> I am having problems updating the barebox from version 2019.02 to version 2020.10.
> The barebox i.MX6 CLK driver now uses several patches compared to the previous
> version to fix the err009219 bug, and the display no more works as before.
> I use a board based on i.MX6Q revision 1.2. With the old bootloader, the LVDS channel
> is initialized and I can display the splash screen in the barebox. After loading the kernel,
> everything works too.
> I added source selection for LVDS channels and the kernel works with these additions.
> &clks {
> 	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
> 			  <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
> 	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
> 				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
> };
> 
> The splash screen in new version is not displayed in the barebox.
> So, the question, what I do incorrect and how to fix this?
> Old clk_dump:
>     pll5_video (rate 716800008, enabled)
>         pll5_post_div (rate 179200002, enabled)
>             pll5_video_div (rate 44800001, enabled)
>                 ldb_di0_sel (rate 44800001, enabled)
>                     ldb_di0_div_3_5 (rate 12800000, enabled)
>                         ldb_di0_podf (rate 6400000, enabled)
>                             ipu1_di0_sel (rate 6400000, enabled)
>                                 ipu1_di0 (rate 6400000, enabled)
>                                     2400000.ipu@2400000.of_di0_pixel (rate 6400000, enabled)

44800001 / 6400000 = 7.00000015625

>                             ldb_di0 (rate 6400000, enabled)
> New:
>     pll5_video (rate 716800008, enable_count: 1, unknown)
>         pll5_post_div (rate 358400004, enable_count: 1, always enabled)
>             pll5_video_div (rate 179200002, enable_count: 1, always enabled)
>                 ldb_di0_sel (rate 179200002, enable_count: 1, always enabled)
>                     ldb_di0_div_3_5 (rate 51200000, enable_count: 1, always enabled)
>                         ldb_di0_podf (rate 25600000, enable_count: 1, always enabled)
>                             ipu1_di0_sel (rate 25600000, enable_count: 1, always enabled)
>                                 ipu1_di0 (rate 25600000, enable_count: 1, enabled)
>                                     2400000.ipu@2400000.of_di0_pixel (rate 6400000, enable_count: 1, always enabled)

179200002 / 6400000 = 28.0000003125


Shouldn't both be a clean 7.0? Is it normal that your PLL5 couldn't be configured
exactly to 716800000?

Does Linux /sys/kernel/debug/clk/clk_summary have the same frequencies?

For comparison, I've a 33MHz display with the assigned-clock/assigned-clock-parents
snippet in the barebox device tree, but not in the kernel's and it works for me:

pll5_video (rate 924000000, enable_count: 1, unknown)
    pll5_post_div (rate 462000000, enable_count: 1, always enabled)
        pll5_video_div (rate 231000000, enable_count: 1, always enabled)
            ldb_di0_sel (rate 231000000, enable_count: 1, always enabled)
                ldb_di0_div_3_5 (rate 66000000, enable_count: 1, always enabled)
                    ldb_di0_podf (rate 33000000, enable_count: 2, always enabled)
                        ipu1_di0_sel (rate 33000000, enable_count: 1, always enabled)
                            ipu1_di0 (rate 33000000, enable_count: 1, enabled)
                                2400000.ipu@2400000.of_di0_pixel (rate 16500000, enable_count: 1, always enabled)
                        ipu2_di1_sel (rate 33000000, enable_count: 1, always enabled)
                            ipu2_di1 (rate 33000000, enable_count: 1, enabled)
                                2800000.ipu@2800000.of_di1_pixel (rate 33000000, enable_count: 1, always enabled)
                        ldb_di0 (rate 33000000, enable_count: 0, enabled)
            ldb_di1_sel (rate 231000000, enable_count: 0, always enabled)
                ldb_di1_div_3_5 (rate 66000000, enable_count: 0, always enabled)
                    ldb_di1_podf (rate 33000000, enable_count: 0, always enabled)
                        ldb_di1 (rate 33000000, enable_count: 0, enabled)


>                             ldb_di0 (rate 25600000, enable_count: 0, enabled)
> 
> Can anyone help me to resolve this?
> Thanks!
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
