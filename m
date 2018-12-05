Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUXEK-00074i-2b
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 13:28:45 +0000
Received: by mail-lj1-x241.google.com with SMTP id u6-v6so18329654ljd.1
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 05:28:33 -0800 (PST)
Date: Wed, 5 Dec 2018 16:28:30 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181205162830.46aa824e925e132fec0a2ddc@gmail.com>
In-Reply-To: <20181205132158.32337-1-antonynpavlov@gmail.com>
References: <20181205132158.32337-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/4] checkpatch.pl: add ability to ignore various
 messages
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

On Wed,  5 Dec 2018 16:21:54 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Haste makes waste.

Sorry!

The correct subject for this message is "[PATCH v2 0/4] checkpatch.pl: port=
 misc linux commits".

> Changes since PATCH v1:
> =

>   * fix linux kernel git repo hash sums in "checkpatch.pl: check
>     for common memset parameter issues against statements" commit message.
> =

> Antony Pavlov (4):
>   checkpatch.pl: add ability to ignore various messages
>   checkpatch.pl: check for common memset parameter issues against
>     statements
>   checkpatch.pl: use SPDX tag
>   checkpatch.pl: check for #if 0/#if 1
> =

>  scripts/checkpatch.pl | 508 ++++++++++++++++++++++++++++++------------
>  1 file changed, 367 insertions(+), 141 deletions(-)
> =

> -- =

> 2.20.0.rc2
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
