Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQ0KP-00017S-Dd
 for barebox@lists.infradead.org; Thu, 03 May 2012 18:00:35 +0000
Received: by yhjj52 with SMTP id j52so2351930yhj.36
 for <barebox@lists.infradead.org>; Thu, 03 May 2012 11:00:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1336032068-19869-1-git-send-email-plagnioj@jcrosoft.com>
References: <1336032068-19869-1-git-send-email-plagnioj@jcrosoft.com>
Date: Thu, 3 May 2012 22:00:30 +0400
Message-ID: <CAA4bVAFLC7iHa7+S4-6qx9bZCQzPMMUqBu4OSkK7_4iYrSZAQg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] complete: fix duplicate env eval list
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

I have just checked this patch.
The patch fixes the problem with dubbing.

On 3 May 2012 12:01, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> this can be reproductable by this sequence
>
> barebox:/ <TAB>
> . =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0? =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0[ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0addpart
> bootm =A0 =A0 =A0 =A0 =A0 =A0 =A0cat =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cd =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 clear
> cp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 cpuinfo =A0 =A0 =A0 =A0 =A0 =A0crc32 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0delpart
> devinfo =A0 =A0 =A0 =A0 =A0 =A0dhcp =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 edit
> erase =A0 =A0 =A0 =A0 =A0 =A0 =A0ethact =A0 =A0 =A0 =A0 =A0 =A0 exit =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 export
> false =A0 =A0 =A0 =A0 =A0 =A0 =A0getopt =A0 =A0 =A0 =A0 =A0 =A0 go =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 help
> host =A0 =A0 =A0 =A0 =A0 =A0 =A0 loadb =A0 =A0 =A0 =A0 =A0 =A0 =A0loadenv=
 =A0 =A0 =A0 =A0 =A0 =A0loady
> login =A0 =A0 =A0 =A0 =A0 =A0 =A0ls =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 md =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 md5sum
> memcmp =A0 =A0 =A0 =A0 =A0 =A0 memcpy =A0 =A0 =A0 =A0 =A0 =A0 meminfo =A0=
 =A0 =A0 =A0 =A0 =A0memset
> menu =A0 =A0 =A0 =A0 =A0 =A0 =A0 mkdir =A0 =A0 =A0 =A0 =A0 =A0 =A0mount =
=A0 =A0 =A0 =A0 =A0 =A0 =A0mtest
> mw =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 nfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0pas=
swd =A0 =A0 =A0 =A0 =A0 =A0 ping
> printenv =A0 =A0 =A0 =A0 =A0 protect =A0 =A0 =A0 =A0 =A0 =A0pwd =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0readline
> reset =A0 =A0 =A0 =A0 =A0 =A0 =A0rm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rmdir=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0saveenv
> sedit =A0 =A0 =A0 =A0 =A0 =A0 =A0sh =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sha1s=
um =A0 =A0 =A0 =A0 =A0 =A0sha256sum
> sleep =A0 =A0 =A0 =A0 =A0 =A0 =A0source =A0 =A0 =A0 =A0 =A0 =A0 test =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 tftp
> time =A0 =A0 =A0 =A0 =A0 =A0 =A0 timeout =A0 =A0 =A0 =A0 =A0 =A0true =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 umount
> uncompress =A0 =A0 =A0 =A0 unprotect =A0 =A0 =A0 =A0 =A0version =A0 =A0 =
=A0 =A0 =A0 =A0net.nameserver=3D
> net.domainname=3D =A0 =A0cs0.baudrate=3D =A0 =A0 =A0cs0.active=3D =A0 =A0=
 =A0 =A0cs1.active=3D
> cs1.ip=3D =A0 =A0 =A0 =A0 =A0 =A0cs1.port=3D
> barebox:/ $<TAB>
> $net.nameserver =A0 =A0 $net.domainname =A0 =A0 $cs0.baudrate
> $cs0.active =A0 =A0 =A0 =A0 $cs1.active =A0 =A0 =A0 =A0 $cs1.ip
> $cs1.port =A0 =A0 =A0 =A0 =A0 $net.nameserver =A0 =A0 $net.domainname
> $cs0.baudrate =A0 =A0 =A0 $cs0.active =A0 =A0 =A0 =A0 $cs1.active
> $cs1.ip =A0 =A0 =A0 =A0 =A0 =A0 $cs1.port
> barebox:/ $
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> =A0common/complete.c | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/common/complete.c b/common/complete.c
> index 0b03d7c..0780888 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -272,7 +272,7 @@ static char* cmd_complete_lookup(struct string_list *=
sl, char *instr)
> =A0{
> =A0 =A0 =A0 =A0struct command *cmdtp;
> =A0 =A0 =A0 =A0int len;
> - =A0 =A0 =A0 int ret =3D 1;
> + =A0 =A0 =A0 int ret =3D COMPLETE_END;
> =A0 =A0 =A0 =A0char *res =3D NULL;
>
> =A0 =A0 =A0 =A0for_each_command(cmdtp) {
> --
> 1.7.9.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
