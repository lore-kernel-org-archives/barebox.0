Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X20WD-0006M8-Ow
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 16:02:54 +0000
Date: Tue, 1 Jul 2014 11:58:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAOpc7mHhFazCDMQqq8w3hUkRjzovvtSBksYdjwDdkV+LEDb7bA@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407011155220.30744@localhost>
References: <alpine.LFD.2.11.1407010832100.28138@localhost>
 <CAOpc7mHhFazCDMQqq8w3hUkRjzovvtSBksYdjwDdkV+LEDb7bA@mail.gmail.com>
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
Subject: Re: generated command references sometimes render a solid blob of text
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 1 Jul 2014, Holger Schurig wrote:

> The Kconfig help entries (the source of the generated command
> reference) have been written before python-sphinx have been
> selected.
>
> So basically we need to go over all of them and make sure that they
> render correctly. From my point of view, it doesn't harm if you see
> raw ReST formatting while inside "make xconfig".

  normally, i wouldn't be a big fan of deliberately mangling help info
for the sake of how it will *eventually* be rendered but, in this
case, it seems reasonable.

  and on that note, is it a ReST thing that renders two regular
hyphens as a single, long hyphen? as far as i can tell, that is an
issue only in the let.c command help.

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
