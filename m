Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9E4P-0003QA-Lm
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 11:46:58 +0000
Message-ID: <1346845615.3625.18.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 05 Sep 2012 13:46:55 +0200
In-Reply-To: <20120905111549.GG26594@pengutronix.de>
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel> <50471A79.6070707@webware-experts.de>
 <1346838098.3625.10.camel@lws-weitzel>
 <504722D8.1050409@webware-experts.de>
 <20120905105323.GE26594@pengutronix.de> <50473122.90906@webware-experts.de>
 <20120905111549.GG26594@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: MLO doesn't work, rest is ok
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.09.2012, 13:15 +0200 schrieb Sascha Hauer:
> On Wed, Sep 05, 2012 at 01:01:54PM +0200, Norbert Roos wrote:
> > On 09/05/2012 12:53 PM, Sascha Hauer wrote:
> > 
> > >What gcc version do you have?
> > 
> > gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)
> 
> Maybe you could try an older toolchain. There are some dark memories in
> my mind, but it could also be that my mind is fooling me...
I used gcc-linaro-4.5 with gcc-4.6.2 it stops working here also.
Jan

> > 
> > Is there something which i could quickly check in the MLO, a
> > checksum for example? Only if you know something, otherwise i can
> > look it up in the OMAP manual, what he is doing to accept the MLO.
> > 
> > As i said, it seems he doesn't like the MLO, because he's skipping
> > to the next boot source..
> 
> The MLO is generated from barebox.bin with the omap_signGP tool. It
> seems the header is 520byte in size. You could compare these between
> both images. I don't know though if this is enough for the OMAP ROM code
> to detect a valid image.
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
