Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from khc.piap.pl ([195.187.100.11])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NeC7D-0005QB-6p
	for barebox@lists.infradead.org; Sun, 07 Feb 2010 18:44:20 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m33a1eoz9h.fsf@intrepid.localdomain>
	<4B6E9AEE.7040506@pengutronix.de>
Date: Sun, 07 Feb 2010 19:44:05 +0100
In-Reply-To: <4B6E9AEE.7040506@pengutronix.de> (Marc Kleine-Budde's message of
	"Sun, 07 Feb 2010 11:50:22 +0100")
Message-ID: <m3r5owdgy2.fsf_-_@intrepid.localdomain>
MIME-Version: 1.0
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
Subject: Re: Flash drivers, was: IXP4xx support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

I also wonder, why are there two NOR flash drivers, old and new?

Another thing, the drivers seem to support various configurations like
4*16 bit (4 physical flash chips in parallel). Does any currently
supported platform use anything like that? Or maybe all platforms use
1*8 or 16-bit config and the extra code is unneeded complexity?
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
