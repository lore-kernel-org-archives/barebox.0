Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhxMb-0004Q5-4N
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 09:42:37 +0000
Received: by wiax7 with SMTP id x7so84135580wia.0
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 02:42:12 -0700 (PDT)
Message-ID: <552CE0F0.5010505@gmail.com>
Date: Tue, 14 Apr 2015 11:42:08 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20150414084338.GU9742@pengutronix.de>
In-Reply-To: <20150414084338.GU9742@pengutronix.de>
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
Subject: Re: [PATCH 00/13] Add support for Lenovo ix4-300d NAS
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 04/14/2015 10:43 AM, Sascha Hauer wrote:
> This series looks ok to me. Does it make sense to apply it without the
> deferred probing patches or should I better wait for it?

Sascha,

please wait for the reworked deferred probing series. While reworking
it, I also converted gpio-orion from postcore_init() probed to a real
platform_driver to get more devices deferred. That also led to minor
updates to 74x164 driver and I'll have another look at the SPI bitbang
driver, too.

In the meantime, I also added support for the NAND flash controller
driver (mrvl_nand_nfc) to support NFCv2 of later Marvell SoCs. That
series needs some Tested-by from Robert Jarzmik on mach-pxa, so I'll
send it once ix4 went in.

About the NFC series, I'll add some NAND timing support based on the
ONFI default timings you may have seen it in the kernel already. It
will allow to derive PXA NFC's timings directly from the flash attached.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
