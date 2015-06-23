Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from teledigit.eu ([195.56.148.37])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7TGc-0002AJ-F7
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 18:49:55 +0000
Received: from kgy-pc.lan ([46.139.64.211]:34620)
 by teledigit.eu with [XMail 1.27 ESMTP Server]
 id <S6B5C2> for <barebox@lists.infradead.org> from <kgy@teledigit.eu>;
 Tue, 23 Jun 2015 20:49:26 +0200
Date: Tue, 23 Jun 2015 19:57:16 +0200
From: Gyorgy Kovesdi <kgy@teledigit.eu> (by way of Gyorgy Kovesdi
 <kgy@teledigit.eu>)
Message-ID: <20150623195716.4fda658d@kgy-pc.lan>
In-Reply-To: <CAOpc7mEoU-a2Hk3nkQjQX-ya7Nobf3un-aaJpJ0QeG+Ye_JuVA@mail.gmail.com>
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de>
 <55894326.5000107@teledigit.eu>
 <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
 <558961C0.2090005@teledigit.eu>
 <CAOpc7mF1SnaT0==JpBTPvJ=b_MiwADfWNLAJ=moKd61ietku1w@mail.gmail.com>
 <55897294.10908@teledigit.eu>
 <CAOpc7mEoU-a2Hk3nkQjQX-ya7Nobf3un-aaJpJ0QeG+Ye_JuVA@mail.gmail.com>
MIME-Version: 1.0
Resent-Message-ID: <20150623204925.0768cbf5@kgy-pc.lan>
Resent-To: Barebox List <barebox@lists.infradead.org>
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
Subject: Re: Compiling barebox for newest Yocto/meta-freescale
To: Holger Schurig <holgerschurig@gmail.com>

Hi all,
> Better make a Yocto patch. Not everyone compiles Barebox with a "build
> environment".
Ok, i will do that.
However, IMHO it is a wrong idea to hard-wire such a setting, because
everybody will run into this problem having hard-float-only environment.
At least it should be configurable.
BTW everybody must have a (cross) gcc which takes care about that.

Regards
Gyorgy Kovesdi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
