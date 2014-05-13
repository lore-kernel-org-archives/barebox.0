Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkGld-0006Uj-9s
 for barebox@lists.infradead.org; Tue, 13 May 2014 17:45:31 +0000
Date: Tue, 13 May 2014 20:45:02 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20140513174502.GF4096@tarshish>
References: <20140513134228.GQ5858@pengutronix.de>
 <CAOpc7mG5j_r8fOUcDeY2qcKZG=6LKTWr3fmWDadQfcJDquFtwg@mail.gmail.com>
 <20140513141835.GT5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140513141835.GT5858@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Tue, May 13, 2014 at 04:18:35PM +0200, Sascha Hauer wrote:
> On Tue, May 13, 2014 at 04:01:07PM +0200, Holger Schurig wrote:
> > If wiki and doxygen are not updated, than this is a sign that they
> > should probably be outphased.
> > 
> > Instead, I'd prefer to have text files in the Documentation/ tree. So
> > changes to them pass the normal review process.
> 
> +1
> 
> > > Plain text files
> > > - no links
> > > - no pictures
> > 
> > If we use some special format for them, e.g. Markdown or *.rst, then
> > the files can still converted to HTML, and links and images could
> > still be possible. That would mean that wiki.barebox.org probably goes
> > away, but that (part) of www.barebox.org is generated from the
> > *.rst/Markdown files.
> 
> This sounds like the best of two worlds. Do you know an example of a
> project with markdown/rst documentation?

Buildroot generates its manual from in-tree AsciiDoc formatted files under 
docs/manual/. PDF, HTML, epub, and text output formats are supported. See 
http://buildroot.net/docs.html for the generated result. See 
docs/manual/manual.mk (included from the top level Makefile) for the build 
recipes.

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
