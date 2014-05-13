Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkDXm-0000vL-IV
 for barebox@lists.infradead.org; Tue, 13 May 2014 14:18:59 +0000
Date: Tue, 13 May 2014 16:18:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513141835.GT5858@pengutronix.de>
References: <20140513134228.GQ5858@pengutronix.de>
 <CAOpc7mG5j_r8fOUcDeY2qcKZG=6LKTWr3fmWDadQfcJDquFtwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mG5j_r8fOUcDeY2qcKZG=6LKTWr3fmWDadQfcJDquFtwg@mail.gmail.com>
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
Subject: Re: barebox Documentation
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 04:01:07PM +0200, Holger Schurig wrote:
> If wiki and doxygen are not updated, than this is a sign that they
> should probably be outphased.
> 
> Instead, I'd prefer to have text files in the Documentation/ tree. So
> changes to them pass the normal review process.

+1

> 
> > Plain text files
> > - no links
> > - no pictures
> 
> If we use some special format for them, e.g. Markdown or *.rst, then
> the files can still converted to HTML, and links and images could
> still be possible. That would mean that wiki.barebox.org probably goes
> away, but that (part) of www.barebox.org is generated from the
> *.rst/Markdown files.

This sounds like the best of two worlds. Do you know an example of a
project with markdown/rst documentation?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
