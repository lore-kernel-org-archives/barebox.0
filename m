Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftFgM-0005Kh-F1
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 17:15:36 +0000
Date: Fri, 24 Aug 2018 19:15:20 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180824171520.GB16451@ravnborg.org>
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824030511.23021-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/3] i.MX8 malloc pool position and 32-bit only DMA
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

> This series is a result of debugging FEC and uSDHC failures on
> i.MX8MQ. Patches 1 and 2 are pretty straightforward and shouldn't be
> controversial. Patch 3, OTOH, may or may not be a good way to solve
> this problem, but it's a good way to start a discussion on the subject
> which is my main goal here.
> 
> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (3):
>   mci: imx-esdhc: Bail out if DMA address is larger than 32-bits
>   net: fec: Bail out if DMA address is larger than 32-bits

In the above patches the checks are distributed to the
users. Are there any reason why we could not centralize this
check in the dma code?
As I assume it is everyone that is constrained to the
32BIT address space.

And do we really need these checks if we teach
malloc to only provide memory that is DMA'able?

For the malloc bits I like that this change
is limited to ARM code and not in generic code.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
