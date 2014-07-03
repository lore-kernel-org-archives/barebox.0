Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2b6s-0004kj-58
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 07:07:11 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id B44C2FF9988
 for <barebox@lists.infradead.org>; Thu,  3 Jul 2014 08:57:46 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20140703065422.GO14257@pengutronix.de>
Date: Thu, 3 Jul 2014 14:57:14 +0800
Message-Id: <37EE4490-6AB3-4F6C-B2E5-999729B628AB@jcrosoft.com>
References: <1403168850-5995-1-git-send-email-Herve.CODINA@celad.com>
 <53B3AA88.10906@celad.com> <20140703065422.GO14257@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] passwd: Support passwd file custom directory
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Herve Codina <herve.codina@celad.com>, barebox@lists.infradead.org


On Jul 3, 2014, at 2:54 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> =

> On Wed, Jul 02, 2014 at 08:45:28AM +0200, Herve Codina wrote:
>> Hi,
>> =

>> I haven't got any news about this patch.
>> Has it been reviewed ?
>> =

>> I hope it was not lost in the flow of other patches.
>> If so, i can resend it.
> =

> Sorry, I have seen it but then forgot to write an answer.
> =

>>> diff --git a/include/password.h b/include/password.h
>>> index 0dd1054..9d84685 100644
>>> --- a/include/password.h
>>> +++ b/include/password.h
>>> @@ -18,8 +18,14 @@
>>> #ifndef __PASSWORD_H__
>>> #define __PASSWORD_H__
>>> =

>>> -#define PASSWD_FILE		"/env/etc/passwd"
>>> -#define PASSWD_DIR		"/env/etc/"
>>> +#ifdef CONFIG_PASSWORD_DIR
>>> +#define PASSWD_DIR		CONFIG_PASSWORD_DIR
>>> +#else
>>> +#define PASSWD_DIR		"/env/etc"
>>> +#endif
>>> +
>>> +#define PASSWD_FILE		PASSWD_DIR"/passwd"
> =


I don=92t like this idea to have the passwd file configurable

Why do we need thant?
> I don't like this ifdeffery. If you want to have this configurable
> please make a
> =

> static char *passwd_file =3D "/env/etc/passwd"
> =

> int set_passwd_file(const char *file)
> {
> 	passwd_file =3D file;
> }
> =

> And call it from your board code.
> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
