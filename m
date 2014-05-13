Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x232.google.com ([2607:f8b0:4002:c01::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkDGr-0007O0-QY
 for barebox@lists.infradead.org; Tue, 13 May 2014 14:01:30 +0000
Received: by mail-yh0-f50.google.com with SMTP id 29so321566yhl.9
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 07:01:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513134228.GQ5858@pengutronix.de>
References: <20140513134228.GQ5858@pengutronix.de>
Date: Tue, 13 May 2014 16:01:07 +0200
Message-ID: <CAOpc7mG5j_r8fOUcDeY2qcKZG=6LKTWr3fmWDadQfcJDquFtwg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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

If wiki and doxygen are not updated, than this is a sign that they
should probably be outphased.

Instead, I'd prefer to have text files in the Documentation/ tree. So
changes to them pass the normal review process.

> Plain text files
> - no links
> - no pictures

If we use some special format for them, e.g. Markdown or *.rst, then
the files can still converted to HTML, and links and images could
still be possible. That would mean that wiki.barebox.org probably goes
away, but that (part) of www.barebox.org is generated from the
*.rst/Markdown files.

I personally would rather change local text files than online some
wiki. Locally, I can use grep, Emacs, python-scripts and so on. On the
wiki, I can just use keyboard and mouse ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
