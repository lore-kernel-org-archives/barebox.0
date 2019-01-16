Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjqDT-0003VC-Sz
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:47:09 +0000
Date: Wed, 16 Jan 2019 19:47:02 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190116184702.GC27364@ravnborg.org>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 00/11] ARM: at91: microchip-kz9477-evb: support first
 stage boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Wed, Jan 16, 2019 at 06:45:48PM +0100, Ahmad Fatoum wrote:
> This patch series imports the necessary infrastructure out of the
> at91bootstrap project to support first stage usage on the SAMA5.

Very nice, especillay as I have a shiny new SAMA5D4 Xplained Ultra
on my disk waiting to be toyed with.

I will take a closer look in a few days, but most looked good
at first look.

Could I ask you to update the very simple .rst file included
just a few days ago in Documentation/ so we get a better
board description and have the new defconfig also documented.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
