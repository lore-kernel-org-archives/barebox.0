Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQiT3-0006J1-0d
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 20:54:17 +0000
Date: Sat, 15 Aug 2015 22:53:49 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20150815205349.GA28427@ravnborg.org>
References: <1439657071-26736-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439657071-26736-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2] i2c-imx: Add missing preporcessor directives
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Sat, Aug 15, 2015 at 09:44:31AM -0700, Andrey Smirnov wrote:
> On non-PowerPC platforms call to i2c_fsl_set_clk() will try to obtain
> I2C clock freqency from i2c_fsl->clk, however that field would not be
> initialized if CONFIG_COMMON_CLK is not set. This patch makes sure
> that i2c_fls_set_clk() is a no-op on non-PPC targets when
> CONFIG_COMMON_CLK is not set

Per the other mail we will never hit this case.
So you add an ifdef that never will be used,
because this driver is either for IMX (which uses COMMON_CLK) or PowerPC.

There is this snip from the driver:

#ifdef CONFIG_COMMON_CLK
        i2c_fsl->clk = clk_get(pdev, NULL);
        if (IS_ERR(i2c_fsl->clk))
                return PTR_ERR(i2c_fsl->clk);
#endif

You may have been inspired by that.
To the best of my understanding the ifdef can be dropped,
because clk_dev() is always defined, but retinr NULL if
HAVE_CLK is not defined.
I assume thsi is the case for PowerPC.

So the better fix would be to get rid of this ifdet,
rather than introducing a new one.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
