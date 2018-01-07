Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eYJAc-0005zi-4b
 for barebox@lists.infradead.org; Sun, 07 Jan 2018 22:12:00 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 7DA8820071
 for <barebox@lists.infradead.org>; Sun,  7 Jan 2018 23:11:41 +0100 (CET)
Date: Sun, 7 Jan 2018 23:11:39 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180107221139.GA9744@ravnborg.org>
References: <20171231100244.GA16379@ravnborg.org>
 <20180101131523.1508-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180101131523.1508-4-sam@ravnborg.org>
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
Subject: Re: [PATCH 4/4] at91sam9263ek: enable DT support
To: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 01, 2018 at 02:15:23PM +0100, Sam Ravnborg wrote:
> Add at91sam9263ek.dts to build.
> Include mmc1 in at91sam9263ek.dts, as mmc1 is what the evaluation
> kit uses for the SD card.
...

This patch is buggy and needs an update.
The call to sam9_smc_configure() happens before the device are
registered - so probe is not done.
I will respin the patch in the coming week - needs to test it a bit more.

The first three patches are OK.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
