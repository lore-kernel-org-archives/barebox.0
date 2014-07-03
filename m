Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2fO9-0003Fk-Fq
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 11:41:17 +0000
Date: Thu, 3 Jul 2014 07:40:46 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20140703064504.GN14257@pengutronix.de>
Message-ID: <alpine.LFD.2.11.1407030738001.21622@localhost>
References: <alpine.LFD.2.11.1407021457320.4254@localhost>
 <CAOpc7mEjkLo6Z12tVVH8PeY3Pv6JkoY0TXH_kz82jwbDjzW9tg@mail.gmail.com>
 <20140703064504.GN14257@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: real pedantic whining: "devicetree" isn't really a single word
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, 3 Jul 2014, Sascha Hauer wrote:

> On Wed, Jul 02, 2014 at 10:12:33PM +0200, Holger Schurig wrote:
> > Oh, please bear with us germans, indians, italians and whoever we are
> > with our limited pidgin-english knowledge.
> >
> > No, to turn it the other way around: it's great that a native-english
> > speaker with knowledge and taste of the language goes over the
> > documentation.
> >
> > And at least it's now called "device tree", and no longer just "of"
> > (from open firmware) :-)
>
> Yeah, naming functions of_* is one thing, but writing of in text
> looks just ugly and confusing. Writing OF is only slightly better.
> Speaking of "device tree" is surely better, but unfortunately this is such
> a generic term. What else do we have?
>
> - Flat Device Tree (FDT), describes the binary format
> - Device Tree Blob (DTB), same as FDT
> - Device Tree Source (DTS)
>
> There's just no good name for this mechanism.

  yes, i've been down this road before, it's messy. the only thing i
think would be worth changing is to simply not use "devicetree" as if
it was a single word -- all of the docs i've seen for device trees
always treats that as two words. but that's not high on my priority
list ... we can revisit it down the road if anyone thinks it's worth
it. moving on ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
