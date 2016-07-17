Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOslM-000307-0a
 for barebox@lists.infradead.org; Sun, 17 Jul 2016 20:34:10 +0000
Date: Sun, 17 Jul 2016 22:31:47 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <1468772354.967026288@f191.i.mail.ru>
Message-ID: <alpine.DEB.2.00.1607172224100.24666@blala.de>
References: <1468770798-22102-1-git-send-email-akurz@blala.de>
 <1468770798-22102-5-git-send-email-akurz@blala.de>
 <1468772354.967026288@f191.i.mail.ru>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-1050432053-1468787507=:24666"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] scripts: imx-usb-loader: split off topic-code into
 functions
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-1050432053-1468787507=:24666
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit



On Sun, 17 Jul 2016, Alexander Shiyan wrote:

> >Воскресенье, 17 июля 2016, 18:53 +03:00 от Alexander Kurz <akurz@blala.de>:
> >
> >Improve code understandability: extract the "jump application" Serial
> >Download Protocol access method and file-to-buffer reader functionality
> >out of do_irom_download().
> >
> >Signed-off-by: Alexander Kurz < akurz@blala.de >
> >---
> > scripts/imx/imx-usb-loader.c | 159 +++++++++++++++++++++++++------------------
> > 1 file changed, 92 insertions(+), 67 deletions(-)
> >
> >diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> ...
> >+FILE *xfile;
> >+unsigned fsize;
> >+int cnt;
> >+unsigned char *buf;
> >+xfile = fopen(name, "rb");
> >+if (!xfile) {
> >+printf("error, can not open input file: %s\n", name);
> >+return -5;
> ...
> >+fsize = get_file_size(xfile);
> >+if (fsize < 0x20) {
> >+printf("error, file: %s is too small\n", name);
> >+fclose(xfile);
> >+return -2;
> -2 ? Maybe -EINVAL or so will be more appropriate here?
> 
> ---
Yes, right,
that's just the behviour from the existing implementation (don't touch too 
many topics with one patch at one time)
There are much more magic-number returns in imx-usb-loader.c, I propose to 
do a specific cleanup on this.
Cheers, Alexander
 
---598520180-1050432053-1468787507=:24666
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-1050432053-1468787507=:24666--
