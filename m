Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X8jtx-0002UD-N4
 for barebox@lists.infradead.org; Sun, 20 Jul 2014 05:43:14 +0000
Received: by mail-la0-f52.google.com with SMTP id e16so3973734lan.11
 for <barebox@lists.infradead.org>; Sat, 19 Jul 2014 22:42:50 -0700 (PDT)
Date: Sun, 20 Jul 2014 09:55:22 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140720095522.41f6874de19b368a29573cf7@gmail.com>
In-Reply-To: <CAOpc7mEHJFktB5v=uRqLUWgEdzHA05KmFmC3_ix+gfooO-0MKw@mail.gmail.com>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
 <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
 <CAOpc7mEHJFktB5v=uRqLUWgEdzHA05KmFmC3_ix+gfooO-0MKw@mail.gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, 19 Jul 2014 21:02:22 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

> I'd prefer a more logical format (and that is also in the help).
> However, in this case I wouldn't name the command "hwclock", but maybe
> "setclock".

hwclock allows to use a logical format!

e.g. here is a quote from hwclock manpage:

     --date=3Ddate_string
              You  need this option if you specify the --set or --predict f=
unctions, otherwise
              it is ignored.  It specifies the time to which to set the Har=
dware Clock, or the
              time  for which to predict the Hardware Clock reading.  The v=
alue of this option
              is an argument to the date(1) program.  For example:

                  hwclock --set --date=3D"2011-08-14 16:45:05"

The problem is that date(1) program allows to use TOO MANY formats (both lo=
gical and illogical).
We have to select only one format!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
