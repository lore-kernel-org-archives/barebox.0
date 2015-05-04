Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAKE-0001RN-Vj
 for barebox@lists.infradead.org; Mon, 04 May 2015 06:57:59 +0000
Date: Mon, 4 May 2015 08:57:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504065736.GI6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
 <1430619980-26243-7-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430619980-26243-7-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 6/8] i.MX: serial: Convert i.MX51 and i.MX6 to use
 'setup_uart_ll'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 02, 2015 at 07:26:18PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Two boards -- 'guf-santaro' and 'eltec-hipercam' -- were not
> converted to use this function because they enable low-level UART
> regardless of the value of CONFIG_DEGUG_LL and so converting them to
> 'setup_uart_ll' would change the behaviour of the image build with
> 'imx_v7_defconfig'. Should those boards be converted to respect
> CONFIG_DEBUG_LL?

Yes, it won't hurt to only initialize the UART when CONFIG_DEBUG_LL is
enabled.

> 
> Boards 'karo-tx25' and 'tqma53' could be converted but weren't because
> I don't have any i.MX25 or i.MX53 based hardware to test on.

No problem, they can still be converted by someone who comes along this
code and has hardware to test.

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
