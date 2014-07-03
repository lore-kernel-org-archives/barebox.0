Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2bZ8-0003DY-4v
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 07:36:23 +0000
Message-ID: <53B507E2.9010906@celad.com>
Date: Thu, 3 Jul 2014 09:36:02 +0200
From: Herve Codina <herve.codina@celad.com>
MIME-Version: 1.0
References: <1403168850-5995-1-git-send-email-Herve.CODINA@celad.com><53B3AA	88.10906@celad.com>
 <20140703065422.GO14257@pengutronix.de>
 <37EE4490-6AB3-4F6C-B2E5-999729B628AB@jcrosoft.com>
In-Reply-To: <37EE4490-6AB3-4F6C-B2E5-999729B628AB@jcrosoft.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



Le 03/07/2014 08:57, Jean-Christophe PLAGNIOL-VILLARD a =E9crit :
> =

> On Jul 3, 2014, at 2:54 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

>>
>> On Wed, Jul 02, 2014 at 08:45:28AM +0200, Herve Codina wrote:
>>> Hi,
>>>
>>> I haven't got any news about this patch.
>>> Has it been reviewed ?
>>>
>>> I hope it was not lost in the flow of other patches.
>>> If so, i can resend it.
>>
>> Sorry, I have seen it but then forgot to write an answer.
>>
>>>> diff --git a/include/password.h b/include/password.h
>>>> index 0dd1054..9d84685 100644
>>>> --- a/include/password.h
>>>> +++ b/include/password.h
>>>> @@ -18,8 +18,14 @@
>>>> #ifndef __PASSWORD_H__
>>>> #define __PASSWORD_H__
>>>>
>>>> -#define PASSWD_FILE		"/env/etc/passwd"
>>>> -#define PASSWD_DIR		"/env/etc/"
>>>> +#ifdef CONFIG_PASSWORD_DIR
>>>> +#define PASSWD_DIR		CONFIG_PASSWORD_DIR
>>>> +#else
>>>> +#define PASSWD_DIR		"/env/etc"
>>>> +#endif
>>>> +
>>>> +#define PASSWD_FILE		PASSWD_DIR"/passwd"
>>
> =

> I don=92t like this idea to have the passwd file configurable
> =

> Why do we need thant?

In my case i have multiple envfs images loaded with loadenv.
and i need to have passwd file from one of these image.
I have /env which is my barebox env and /user which is loaded from envfs
image. I need passwd file in /user/passwd.

In a more general case, the abilily to have passwd file from a directory
other than /env can lead, in a very simple way, to the ability to have
passwd file from a fat filesystem or an ubifs filesystem

I use #define to set this passwd file because i want to set it at
compile time and not at runtime.

If you prefer runtime configuration, i can do the patch according to
sasha suggestion.

Herve


>> I don't like this ifdeffery. If you want to have this configurable
>> please make a
>>
>> static char *passwd_file =3D "/env/etc/passwd"
>>
>> int set_passwd_file(const char *file)
>> {
>> 	passwd_file =3D file;
>> }
>>
>> And call it from your board code.
>>
>> Sascha
>>
>> -- =

>> Pengutronix e.K.                           |                            =
 |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/ =
 |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0   =
 |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555=
 |
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
