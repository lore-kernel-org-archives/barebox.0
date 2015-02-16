Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNJBY-0000HS-9n
 for barebox@lists.infradead.org; Mon, 16 Feb 2015 10:45:52 +0000
Received: by mail-wi0-f175.google.com with SMTP id r20so25088445wiv.2
 for <barebox@lists.infradead.org>; Mon, 16 Feb 2015 02:45:30 -0800 (PST)
Message-ID: <54E1CA46.10307@gmail.com>
Date: Mon, 16 Feb 2015 11:45:26 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
 <1423777200-22965-18-git-send-email-dev@lynxeye.de>
 <54DD2BE3.1090101@gmail.com>
In-Reply-To: <54DD2BE3.1090101@gmail.com>
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
Subject: Re: [PATCH RFT 17/24] net: orion-gbe: convert to streaming DMA ops
To: Lucas Stach <dev@lynxeye.de>, barebox@lists.infradead.org

On 12.02.2015 23:40, Sebastian Hesselbarth wrote:
> I really enjoy reading commit logs, but I cannot find any on this
> one. ;) Mind adding a few words for the final patch set?
>
> I'll give it a go on Dove and Kirkwood in the next few days, but be
> aware that there is still no cache support on both anyway.

As expected, the patches do no harm to the driver due to the missing
cache support for MVEBU.

Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

on SolidRun CuBox (Dove).

Thanks!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
