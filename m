Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkoD6-0005ir-4J
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 08:09:25 +0000
Received: by mail-lf0-x241.google.com with SMTP id s29so4566286lfg.3
 for <barebox@lists.infradead.org>; Fri, 16 Sep 2016 01:09:03 -0700 (PDT)
Date: Fri, 16 Sep 2016 11:12:43 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160916111243.1dc2a3f16421fb33831817a0@gmail.com>
In-Reply-To: <1474008220-7601-1-git-send-email-m.olbrich@pengutronix.de>
References: <1474008220-7601-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] state: copy backend of_path string
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 16 Sep 2016 08:43:38 +0200
Michael Olbrich <m.olbrich@pengutronix.de> wrote:

> Caching pointers to device tree nodes or names is not save. The barebox
                                                        ^^^^ safe?
> internal device tree may be changed by loading a new device tree or throu=
gh
> fixup handlers. As a result, the string may be deleted.
> Use local copies of the full path instead.
> =

> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
