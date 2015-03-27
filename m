Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YbNpl-00048H-GE
 for barebox@lists.infradead.org; Fri, 27 Mar 2015 06:33:34 +0000
Received: by lahp7 with SMTP id p7so44145577lah.2
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2015 23:33:10 -0700 (PDT)
Date: Fri, 27 Mar 2015 10:37:26 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150327103726.ce76e9f7bbb13fd557d17ce1@gmail.com>
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
Subject: hashsum.c:54:3: error: 'ret' undeclared (first use in this function)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi !

I can't build barebox/next for qemu-malta:

  CC      commands/hashsum.o
commands/hashsum.c: In function 'do_hash':
commands/hashsum.c:54:3: error: 'ret' undeclared (first use in this functio=
n)
   ret =3D digest_set_key(d, key, keylen);

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
