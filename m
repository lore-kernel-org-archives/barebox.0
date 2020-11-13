Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-1.e-mind.com ([188.94.192.45])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdV9E-000835-JS
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 09:13:38 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-1.e-mind.com (Postfix) with ESMTP id 2996D83ECED
 for <barebox@lists.infradead.org>; Fri, 13 Nov 2020 09:13:33 +0000 (UTC)
Received: from submit-1.e-mind.com ([127.0.0.1])
 by localhost (submit-1.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vy5MzTJTo3q9 for <barebox@lists.infradead.org>;
 Fri, 13 Nov 2020 10:13:33 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-1.e-mind.com (Postfix) with SMTP id 1BA6D83ECEB
 for <barebox@lists.infradead.org>; Fri, 13 Nov 2020 10:13:33 +0100 (CET)
References: <1605257501.218157342@f555.i.mail.ru>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <809d5654-6885-daf6-43d4-457faa274b1f@eurek.it>
Date: Fri, 13 Nov 2020 10:13:32 +0100
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX6Q ldb after 2019.02
To: barebox@lists.infradead.org

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
>      pll5_video (rate 716800008, enabled)
>          pll5_post_div (rate 179200002, enabled)
>              pll5_video_div (rate 44800001, enabled)
>                  ldb_di0_sel (rate 44800001, enabled)
>                      ldb_di0_div_3_5 (rate 12800000, enabled)
>                          ldb_di0_podf (rate 6400000, enabled)
>                              ipu1_di0_sel (rate 6400000, enabled)
>                                  ipu1_di0 (rate 6400000, enabled)
>                                      2400000.ipu@2400000.of_di0_pixel (rate 6400000, enabled)
>                              ldb_di0 (rate 6400000, enabled)
> New:
>      pll5_video (rate 716800008, enable_count: 1, unknown)
>          pll5_post_div (rate 358400004, enable_count: 1, always enabled)

This is a div2. Should be div4

>              pll5_video_div (rate 179200002, enable_count: 1, always enabled)
>                  ldb_di0_sel (rate 179200002, enable_count: 1, always enabled)
>                      ldb_di0_div_3_5 (rate 51200000, enable_count: 1, always enabled)
>                          ldb_di0_podf (rate 25600000, enable_count: 1, always enabled)
>                              ipu1_di0_sel (rate 25600000, enable_count: 1, always enabled)
>                                  ipu1_di0 (rate 25600000, enable_count: 1, enabled)
>                                      2400000.ipu@2400000.of_di0_pixel (rate 6400000, enable_count: 1, always enabled)
>                              ldb_di0 (rate 25600000, enable_count: 0, enabled)
> 
> Can anyone help me to resolve this?

Try to use pll5_post_div as div4 of the original pll5_video. All others 
should be adapting correctly then.

> Thanks!
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
