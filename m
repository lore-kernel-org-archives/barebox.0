Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFjeI-0002ND-PR
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 18:46:56 +0000
Date: Wed, 2 Oct 2019 20:46:44 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20191002184644.GA32491@ravnborg.org>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
 <20191002144430.14946-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144430.14946-4-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/7] lds: Move start/end address variables into defines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Wed, Oct 02, 2019 at 04:44:26PM +0200, Sascha Hauer wrote:
> For the older section defines we specify the start and end addresses
> outside the macro which means we have to repeat them in each linker
> script. Make the start/end addresses part of the define to simplify
> things.

A positive side effect is that if the linker insert some alignment
then the variable will have the correct value.
I recall that I in the kernel was hit by a variable that was off by a
few bytes due to extra alignment added by the linker.
And ofc only in some configurations.

Looked through the patch but no testing.

	Sam

Acked-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
