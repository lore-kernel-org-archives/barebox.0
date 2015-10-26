Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrEyU-00029z-SI
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 00:52:23 +0000
Received: by pasz6 with SMTP id z6so237978921pas.2
 for <barebox@lists.infradead.org>; Tue, 27 Oct 2015 17:52:02 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:40:56 +0800
From: Kevin Du Huanpeng <u74147@gmail.com>
Message-ID: <20151026204056.GA23323@L64>
References: <u74147@gmail.com>
 <1445683088-25675-1-git-send-email-u74147@gmail.com>
 <20151026071836.GQ14356@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151026071836.GQ14356@pengutronix.de>
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
Subject: Re: [PATCH] lib:font:fbconsole: add custom font support for review
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 26, 2015 at 08:18:36AM +0100, Sascha Hauer wrote:
> 
> This patch has several hunks without changes which makes it hard to look
> at.
> 
> Somehow this looks like beginning unicode support. Wouldn't it be better
> to pick the relevant parts we need from unicode and support them?


How about store the font data externally, for reasons
  1. the font data maybe hurge, it take time to burn it to flash make barebox fat.
  2. the part of font data namally don't change durning the devolopment.
  3. 'custom' means usless for other application.
  4. the fontdata maybe stored in a external spi flash and share with OS.
just pass the base address of index and fontdata or tell barebox how to get the
font data.


- - -
Du Huanpeng
+86.13719074147


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
