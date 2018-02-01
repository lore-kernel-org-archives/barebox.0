Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehCSA-0000GI-Dz
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 10:50:52 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>) id 1ehCRy-0007BD-2x
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 11:50:38 +0100
Message-ID: <1517482238.4674.8.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 01 Feb 2018 11:50:38 +0100
In-Reply-To: <20180201104615.19524-4-p.zabel@pengutronix.de>
References: <20180201104615.19524-1-p.zabel@pengutronix.de>
 <20180201104615.19524-4-p.zabel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/4] lib: Add zstd modules
To: barebox@lists.infradead.org

On Thu, 2018-02-01 at 11:46 +0100, Philipp Zabel wrote:
> Based on kernel commit 73f3d1b48f50 ("lib: Add zstd modules").
>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Please disregard this one in favor of
  [PATCH 3/4] lib: Add zstd decompression module

I renamed it last-minute to make clear that this is just a port of the
decompressor and forgot to remove the old patch.

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
