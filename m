Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dVlBm-0003qq-78
 for barebox@lists.infradead.org; Thu, 13 Jul 2017 20:58:24 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 118A9803A7
 for <barebox@lists.infradead.org>; Thu, 13 Jul 2017 22:57:53 +0200 (CEST)
Date: Thu, 13 Jul 2017 22:57:51 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170713205751.GA9385@ravnborg.org>
References: <20170707220714.GB28540@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170707220714.GB28540@ravnborg.org>
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
Subject: Re: [PATCH 2/2] at91sam9263ek: enable multi-image build
To: Barebox List <barebox@lists.infradead.org>

On Sat, Jul 08, 2017 at 12:07:14AM +0200, Sam Ravnborg wrote:
> >From 265d9e416b53e6ad1f7941e0de61d0257ab1e233 Mon Sep 17 00:00:00 2001
> From: Sam Ravnborg <sam@ravnborg.org>
> Date: Fri, 7 Jul 2017 17:56:20 +0200
> Subject: [PATCH 2/2] at91sam9263ek: enable multi-image build
> 
> Convert at91sam9263ek to multi-image build as we already do
> for many of the i.MX based boards and recently for
> the at91sam9x5ek board.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Some additional testing revealed that this patch is buggy.
I was missing CONFIG_RELOCTABLE and for some reasons this
did not show up in my initial testing.

I will send an updated version in some days.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
