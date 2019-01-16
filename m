Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjprW-0006ql-4c
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:24:27 +0000
Date: Wed, 16 Jan 2019 19:24:23 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190116182423.GB27364@ravnborg.org>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
 <20190116174559.17416-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190116174559.17416-4-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 03/11] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Wed, Jan 16, 2019 at 06:45:51PM +0100, Ahmad Fatoum wrote:
> Only at91sam9g45_reset.S and the header itself actually use
> any of the macros defined within.
> 
> Instead of adding missing definitions and adapting the incoming DDRAMC
> initialization code from at91bootstrap, just include the at91_ddrsdrc.h
> header wholesale.

This seems to go in the opposite direction
of what we did in for example this commit:
eaa7fcf934826d519f532227c304c09a62cfe685 ("ARM: at91: Add SoC namespace to matrix defines")

It adds a lot of defines that are not prefixed with SOC names,
so asking for conflicts.

Also the patch was a little hard to follow with several types of
changes in one patch.
(Adding files, replacing header files, deleting files)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
