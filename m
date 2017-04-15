Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czJ12-0003LE-F0
 for barebox@lists.infradead.org; Sat, 15 Apr 2017 08:25:10 +0000
Date: Sat, 15 Apr 2017 10:24:44 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170415082444.GB20400@ravnborg.org>
References: <20170411063934.20613-1-s.hauer@pengutronix.de>
 <20170411063934.20613-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170411063934.20613-2-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/2] lib/strtox: remove unnecessary islower()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Apr 11, 2017 at 08:39:34AM +0200, Sascha Hauer wrote:
> toupper() does the right thing, no need to test for islower()
> beforehand, so
> 
> islower(*cp) ? toupper(*cp) : *cp
> 
> can be simplified to:
> 
> toupper(*cp)
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
