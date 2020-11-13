Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f555.i.mail.ru ([94.100.184.134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdUo5-0005pY-KN
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 08:51:47 +0000
Received: by f555.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1kdUo1-0008NV-H4
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 11:51:41 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Fri, 13 Nov 2020 11:51:41 +0300
Message-ID: <1605257501.218157342@f555.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?aS5NWDZRIGxkYiBhZnRlciAyMDE5LjAy?=
To: =?UTF-8?B?YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn?= <barebox@lists.infradead.org>

Hello All.

I am having problems updating the barebox from version 2019.02 to version 2020.10.
The barebox i.MX6 CLK driver now uses several patches compared to the previous
version to fix the err009219 bug, and the display no more works as before.
I use a board based on i.MX6Q revision 1.2. With the old bootloader, the LVDS channel
is initialized and I can display the splash screen in the barebox. After loading the kernel,
everything works too.
I added source selection for LVDS channels and the kernel works with these additions.
&clks {
	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
			  <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
};

The splash screen in new version is not displayed in the barebox.
So, the question, what I do incorrect and how to fix this?
Old clk_dump:
    pll5_video (rate 716800008, enabled)
        pll5_post_div (rate 179200002, enabled)
            pll5_video_div (rate 44800001, enabled)
                ldb_di0_sel (rate 44800001, enabled)
                    ldb_di0_div_3_5 (rate 12800000, enabled)
                        ldb_di0_podf (rate 6400000, enabled)
                            ipu1_di0_sel (rate 6400000, enabled)
                                ipu1_di0 (rate 6400000, enabled)
                                    2400000.ipu@2400000.of_di0_pixel (rate 6400000, enabled)
                            ldb_di0 (rate 6400000, enabled)
New:
    pll5_video (rate 716800008, enable_count: 1, unknown)
        pll5_post_div (rate 358400004, enable_count: 1, always enabled)
            pll5_video_div (rate 179200002, enable_count: 1, always enabled)
                ldb_di0_sel (rate 179200002, enable_count: 1, always enabled)
                    ldb_di0_div_3_5 (rate 51200000, enable_count: 1, always enabled)
                        ldb_di0_podf (rate 25600000, enable_count: 1, always enabled)
                            ipu1_di0_sel (rate 25600000, enable_count: 1, always enabled)
                                ipu1_di0 (rate 25600000, enable_count: 1, enabled)
                                    2400000.ipu@2400000.of_di0_pixel (rate 6400000, enable_count: 1, always enabled)
                            ldb_di0 (rate 25600000, enable_count: 0, enabled)

Can anyone help me to resolve this?
Thanks!

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
