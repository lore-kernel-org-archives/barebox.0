Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=sivan.tkos.co.il)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TB1X4-0006rP-TX
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 10:48:00 +0000
Date: Mon, 10 Sep 2012 13:47:45 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20120910104745.GA9075@sapphire.tkos.co.il>
References: <1347270624-18878-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347270624-18878-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] omap: add SPI as a boot mode for xload
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Mon, Sep 10, 2012 at 11:50:24AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/xload.h |    1 +
>  arch/arm/mach-omap/xload.c              |   40 +++++++++++++++++++++++++++++++
>  2 files changed, 41 insertions(+)

[snip]

> +void *omap_xload_boot_spi(int offset)

static?

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
