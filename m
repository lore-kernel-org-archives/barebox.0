Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSbAy-0005qe-Vq
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 03:40:30 +0000
Received: by mail-lf0-x243.google.com with SMTP id f28so19439064lfi.3
 for <barebox@lists.infradead.org>; Tue, 04 Jul 2017 20:40:09 -0700 (PDT)
Date: Wed, 5 Jul 2017 06:50:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170705065013.ef8a4bdf81cd717cef33f2fb@gmail.com>
In-Reply-To: <20170630115201.hyeqwm2xxxakwbu7@pengutronix.de>
References: <20170630115201.hyeqwm2xxxakwbu7@pengutronix.de>
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
Subject: Re: v2017.07.0
To: Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, lst@pengutronix.de

On Fri, 30 Jun 2017 13:52:01 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi All,
> =

> I just releaed barebox-2017.07.0. The reason for this early release is
> that I am away for the next two months. During this time Lucas will take
> over maintainership and also make the next release.
> =

> Most notable new feature this time I think is the support for links to
> directories. =


Hi!

It looks like the commit

  commit a602bebcf7e42eb8933f224c12cad1c9320e28a1
  Author: Sascha Hauer <s.hauer@pengutronix.de>
  Date:   Tue May 9 07:38:48 2017 +0200

      fs: Implement links to directories

breaks tftp command: the command can't anymore download file from subdirect=
ory,
e.g. =


  barebox:/ tftp antony/zbarebox
  could not open /.tftp_tmp_path/antony/zbarebox: Invalid argument

  barebox:/ tftp zbarebox
        [#################################################################]
  barebox:/

Reverting 944bf0e1 ('fixup! fs: Implement links to directories') and
a602bebc ('fs: Implement links to directories') fixes the problem.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
