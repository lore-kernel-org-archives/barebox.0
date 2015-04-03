Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YduwM-0002s5-JL
 for barebox@lists.infradead.org; Fri, 03 Apr 2015 06:18:51 +0000
Date: Fri, 3 Apr 2015 08:15:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150403061518.GN9742@pengutronix.de>
References: <1427473384-30472-1-git-send-email-antonynpavlov@gmail.com>
 <B98B8DDF-B83C-42E7-A8CD-E90DE16DE567@jcrosoft.com>
 <20150329110427.24206daaf84c5fff0d668ae2@gmail.com>
 <CAOpc7mHqV-qLrpK2Kaus3q3shPTnjWeCw4wozA6b4b6s5=Sy-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mHqV-qLrpK2Kaus3q3shPTnjWeCw4wozA6b4b6s5=Sy-A@mail.gmail.com>
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
Subject: Re: [PATCH] fixup! command: add hmac sum supportfor md5, sha1,
 sha224, sha256, sha384, sha512
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Apr 02, 2015 at 09:11:33AM +0200, Holger Schurig wrote:
> Antony,
> 
> that git has such a function doesn't mean that it is usable in any git
> project. I too, like Jean-Christophe, that a style issue shouldn't be
> named as a fix,

The patch Antony sent has been generated with git commit --fixup. I'll
apply it to the appropriate branch and run a git rebase --autosquash
over it. This makes it very easy for Antony to generate this patch and
easy for me to find and fixup the correct patch. We could also use
--squash instead of --fixup. That would keep both commit messages,
but that might be desirable.

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
