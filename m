Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXVVP-0005EN-MG
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 13:56:32 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id CAFCDFFA49B
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 14:56:07 +0100 (CET)
Date: Mon, 16 Mar 2015 14:55:57 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316135557.GM26127@ns203013.ovh.net>
References: <1426500945-31815-7-git-send-email-plagnioj@jcrosoft.com>
 <1426502999.3330.35.camel@pengutronix.de>
 <20150316110114.GD26127@ns203013.ovh.net>
 <1426503959.3330.45.camel@pengutronix.de>
 <20150316112507.GF26127@ns203013.ovh.net>
 <1426506097.3330.64.camel@pengutronix.de>
 <20150316115204.GI26127@ns203013.ovh.net>
 <1426507125.3330.79.camel@pengutronix.de>
 <20150316121048.GJ26127@ns203013.ovh.net>
 <1426511679.3330.103.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426511679.3330.103.camel@pengutronix.de>
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
Subject: Re: [PATCH 07/10] password: add pbkdf2 support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:14 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 13:10 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 12:58 Mon 16 Mar     , Jan L=FCbbe wrote:
> > > > > > Personnaly I'll prefer
> > > > > > =

> > > > > > a random 64 bytes | sha256 | take first 32bytes. | pbkdf2 10000=
 round
> > > > > =

> > > > > Running SHA-256 on random data is useless for security.
> > > > SHA256 is to improve the entrpopy not security
> > > =

> > > Running a deterministic algorithm cannot increase entropy (only reduce
> > > it).
> > =

> > check the kennel algo for PRGN
> =

> PRNG? That is a different use case. The kernel takes sources of entropy
> and uses those to seed an CSPRNG:
> http://www.2uo.de/myths-about-urandom/

I known how work urandom and random but the kernel do use SHA-1 for generat=
ing
the Random numbers. I do not want to go to deep in the algo we can look at =
the
code.
> =

> > and youp will see why I want to use a sha
> =

> Having high entropy and appearing random are different properties. As
> SHA-256 is deterministic it *cannot* increase entropy:
> http://en.wikipedia.org/wiki/Entropy_(information_theory)
I known about it
> =

> > > > > Just get
> > > > > <hash-size> bytes from /dev/urandom on the host. We could generat=
e a
> > > > > file with the compile-time SALT which is then included.
> > > > > =

> > > > > On the running barebox, we could use SHA to hash the old password=
 file
> > > > > together with the current timer value. At least until we have som=
ething
> > > > > better.
> > > > > =

> > > > > > result a 64 bytes password file <salt 32 byes><key 32 bytes>
> > > > > =

> > > > > Yes. As we select the algorithm at compile time, we don't the to =
save it
> > > > > in the file.
> > > > =

> > > > this is for barebox as we may not have any passwd file
> > > =

> > > The same applies also to the default_passwd compiled in variable.
> > > =

> > > Currently we have:
> > > PASSWD_FILE :=3D $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAUL=
T) -type f)
> > > cmd_pwd_h =3D echo -n "static const char default_passwd[] =3D \"" > $=
@; \
> > >         cat $< | tr -d '\n' >> $@; \
> > >         echo "\";" >> $@
> > > =

> > > include/generated/passwd.h: $(PASSWD_FILE)
> > >         $(call if_changed,pwd_h)
> > > =

> > > This would need to run the hash/pbkdf2 and store salt+key.
> > =

> > no as the current current code expect you to give the correct file form=
at for
> > the currently use password
> > =

> > so today the output of openssl
> =

> Ah, sorry I misread the code here. I though that the plaintext password
> was in the config. CONFIG_PASSWORD_DEFAULT must be the name of a file in
> the srctree with the format matching the selected hash algo?
> =

> > but yes we may need to do more here
> =

> It seems there is no standard tool to create password hashes which
> supports all the algorithms we want to have.
> =

> So the current way is to use barebox itself to create the default
> password file? Should be have a host tool for that or is barebox sandbox
> enough?

yes sandbox is enough we can create such tool but today it's just the sha of
the password store in base64 so you can easly create it in shell

if we start to play we random salt yes we do need a tool

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
