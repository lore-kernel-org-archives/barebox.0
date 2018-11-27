Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRaPc-0004T1-5S
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 10:16:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id k19-v6so19509743lji.11
 for <barebox@lists.infradead.org>; Tue, 27 Nov 2018 02:16:01 -0800 (PST)
Date: Tue, 27 Nov 2018 13:15:57 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181127131557.5b90d841b1dc5a2a27416a09@gmail.com>
In-Reply-To: <20181127080417.fj52tvzngiv2kpih@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
 <20181127073714.16472-6-o.rempel@pengutronix.de>
 <20181127080417.fj52tvzngiv2kpih@pengutronix.de>
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
Subject: Re: [PATCH v2 05/10] MIPS: multiimage: add ENTRY_FUNCTION macros
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Tue, 27 Nov 2018 09:04:17 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> > +							\
> > +	la	a0, dtb_start;				\
> > +	la	a1, dtb_end;				\
> > +	la	v0, pbl_main_entry;			\
> > +	jal	v0;					\
> > +	 nop;						\
> =

> Whitespace inconsistency here.

No whitespace inconsistency here.
Extra whitespace before nop is used because the nop instruction is in delay=
 slot of the jal instruction.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
