Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YnNsy-00070X-CJ
 for barebox@lists.infradead.org; Wed, 29 Apr 2015 09:02:29 +0000
Received: by lagv1 with SMTP id v1so14993657lag.3
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2015 02:02:04 -0700 (PDT)
Date: Wed, 29 Apr 2015 12:07:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150429120710.706b1c5850983c60a5eb24b0@gmail.com>
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
Subject: versatilepb barebox under qemu
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi!

I have just checked barebox for versatilepb under qemu.

After the commit c79d68bd169113600ed0b3edc3b78700995a73f5

  Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  Date:   Tue Dec 23 19:21:54 2014 +0100

      versatilepb: switch to defaultenv-2

       - Boot from NOR
       - enable UBI
       - use PBL

old qemu run string

  $ qemu-system-arm -M versatilepb -nographic \
            -monitor null -kernel barebox -serial stdio

does not work anymore.

But this run string works fine
  $ qemu-system-arm -M versatilepb -nographic -monitor null  -kernel arch/a=
rm/pbl/zbarebox -serial stdio

I have not succeed with starting barebox from flash under qemu.

Do you know appropriate qemu-system-arm run string for running versatilepb =
barebox from flash?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
