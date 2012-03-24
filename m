Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBTdC-00055d-Nv
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 16:15:55 +0000
Received: by iaky10 with SMTP id y10so7461099iak.36
 for <barebox@lists.infradead.org>; Sat, 24 Mar 2012 09:15:53 -0700 (PDT)
Date: Sat, 24 Mar 2012 11:15:39 -0500
From: "Derald D. Woods" <woods.rt@gmail.com>
Message-ID: <20120324161538.GA15950@exodus>
References: <CAPhRStYbTCD6Lzhcfna4WRqYZhQRJrmiEyFm6egFovYdVso59g@mail.gmail.com>
 <CALBypN7p2uP0=ShSUfN3CsxZLZHrQZAfjfKDBsDDaLiMRXXSEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALBypN7p2uP0=ShSUfN3CsxZLZHrQZAfjfKDBsDDaLiMRXXSEw@mail.gmail.com>
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
Subject: Re: i.MX21 USB OTG
To: Martin Fuzzey <mfuzzey@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 24, 2012 at 03:10:25PM +0100, Martin Fuzzey wrote:
> Hi Derald,
> 
> 
> On Fri, Mar 23, 2012 at 2:09 PM, Derald Woods <woods.rt@gmail.com> wrote:
> > Hello Martin,
> >
> > I have an existing design that uses the i.MX21 ARM9 processor. The
> > design currently uses an external USB OTG chip. The chip is now
> > end-of-life. I know that this is an older ARM processor. It still meets
> > most of the design needs. Is the i.MX21 OTG functionality considered
> > reliable? I have not seen any real success stories with the i.MX21 USB
> > OTG implementation. Our board currently utilizes the USB OTG chip at
> > the bootloader and Linux kernel level.
> >
> 
> It depends what you mean by OTG.
> 
> The i.MX21 silicon has 3 USB ports, two of which can only be used as
> USB hosts and one which is configurable as host only, function
> (device) only or OTG (dynamic switching).
> Somewhat confusingly the Freescale documentation refers to the whole
> module as "USB-OTG".
> 
> However the mainline code only supports host mode (there is no
> function driver nor OTG support)
> 
> I mainlined the i.MX21 HCD driver for 2.6.34 and fixed a few bugs for
> 2.6.37 (in particular problems with non aligned buffers causing usbnet
> to fail).
> 
> Since then I haven't had any bug reports, the driver also passes the
> USB test suite (which I updated to check the buffer alignment
> behaviour).
> 
> 
> > I would appreciate being pointed in the right direction or warned of
> > impending danger. Basically I want to know if the mx21 USB OTG has
> > performed well for other embedded Linux designs.
> >
> Something very close to the original code on which I based the driver
> was shipped with the Chumby (which uses  a heavily patched 2.6.16
> kernel). However that code had quite a few bugs and didn't support
> isochronous transfers at all.
> 
> I don't have any direct feedback myself of real world use of the
> driver however since we ended up not shipping an iMX21 based Linux
> product for non technical reasons.
> 
> > I had originally posted to the Barebox mailing list.
> >
> Ah I'm not subscribed to that list - adding it as a CC hoping it's not
> subscriber only
> 
> Cheers,
> 
> Martin Fuzzey

Hello Martin,


Thanks for the detailed feedback. This information is consistent with
what I have observed and followed with regard to the i.MX21. It will
help us chart a meaningful development course. 


Best regards,

Derald D. Woods


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
