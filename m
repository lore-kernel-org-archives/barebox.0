Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzPJB-00061D-KE
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:54:42 +0000
Received: by mail-wg0-f47.google.com with SMTP id k14so217207wgh.6
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 04:54:15 -0700 (PDT)
Message-ID: <53A966DF.6050208@gmail.com>
Date: Tue, 24 Jun 2014 13:54:07 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
 <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/2] dns325: initial support for D-Link DNS-325
To: Alexander Aring <alex.aring@gmail.com>, barebox@lists.infradead.org

On 06/22/2014 10:34 PM, Alexander Aring wrote:
> This patch add a basic support for the D-Link DNS-325.
>
> Currently only booting via uart with kwboot is supported. The barebox
> kwboot utility doesn't work at the moment. Use kwboot utility from u-boot
> instead.
>
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
> I got the kwbimage values from u-boot with change to work with the
> barebox kwboot utility. There is also a bug in u-boot kwbimage file
> which enables 256 MB on chip select 0 and 1. But the DNS-325 has 256
> MB on chip select 0 only. This is fixed in this kwbimage file.

Alexander,

I posted a bunch of MVEBU related patches I had in my private branches.
Can you respin your DNS-325 patch based on those?

Sascha already applied
  "Marvell MVEBU assorted fixes and cleanup" and
  "Convert MVEBU SoCs to DT and PBL_MULTI_IMAGE"
but they haven't appeared on barebox/next. You can wait a day or two
or apply above series yourself. The other 3 pending patch sets are
just more improvements but shouldn't (directly) influence your dns-325
support patches.

I also tried kwboot again on Kirkwood, Dove, and Armada 370 and wasn't
able to reproduce any issues. Can you re-evaluate and report back any
issues with details?

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
