Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gxt7K-00067N-4B
 for barebox@lists.infradead.org; Sun, 24 Feb 2019 12:42:51 +0000
Date: Sun, 24 Feb 2019 13:42:46 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190224124246.GB19669@ravnborg.org>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219172150.11901-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 00/16] ARM: at91: microchip-kz9477-evb: support first
 stage boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Tue, Feb 19, 2019 at 06:21:34PM +0100, Ahmad Fatoum wrote:
> v1 is at <20190116174559.17416-1-a.fatoum@pengutronix.de>.
> 
> I tried to strip down barebox, so the first stage can be device tree
> based as well. It boots up to trying to load the first stage from MMC,
> where it fails. As it's very annoying to debug when only having few bytes
> to spare, I am not sure if it's worth it.

First stage boot are supposed to be very limited in size.
I have only looked a little into this, but trying to bring
the DT infrastructure in so yearly seems like overkill.
If we want barebox to be more widely used for first stage booting
we should IMO avoid the complexity and go for the simple
platform_data based solutions.
This is a little code duplication, but much easier compared to
when one has to head over to at91bootstrap to figure out something.

This is just my personal opinion so before deciing on anything please
ask someone with more knowledge in this area.


It is still on my TODO list to go through this (now updated - thanks) patchset.
But Sascha gave some good feedback and I will await v3.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
