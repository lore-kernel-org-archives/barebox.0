Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1wtP-00015y-38
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 12:10:36 +0000
Date: Tue, 1 Jul 2014 14:10:07 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
In-Reply-To: <20140701065409.GO14257@pengutronix.de>
Message-ID: <alpine.DEB.2.10.1407011407550.7233@9VTHT2J-D520>
References: <1502046103.916753.1404130899228.open-xchange@oxbsltgw09.schlund.de>
 <20140701065409.GO14257@pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-674531524-1404216612=:7233"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] boot: show all boot sources
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-674531524-1404216612=:7233
Content-Type: TEXT/PLAIN; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE



On Tue, 1 Jul 2014, Sascha Hauer wrote:

> On Mon, Jun 30, 2014 at 02:21:39PM +0200, Rolf Evers-Fischer wrote:
>> This patch fixes the presentation of all bootsources with 'boot -m' and
>> 'boot -l' command.
>>
>> Signed-off-by: Rolf Evers-Fischer <embedded24@evers-fischer.de>
>> ---
>> =A0commands/boot.c |=A0 =A0 4 ++--
>> =A01 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/commands/boot.c b/commands/boot.c
>> index c8eae10..1a1856d 100644
>> --- a/commands/boot.c
>> +++ b/commands/boot.c
>> @@ -433,12 +433,12 @@ static int do_boot(int argc, char *argv[])
>> =A0 =A0 =A0 =A0 }
>>
>> =A0 =A0 =A0 =A0 if (do_list) {
>> -=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_list(sources, num_sources);
>> +=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_list(&argv[optind], argc - o=
ptind);
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto out;
>> =A0 =A0 =A0 =A0 }
>>
>> =A0 =A0 =A0 =A0 if (do_menu) {
>> -=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_menu(sources, num_sources);
>> +=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_menu(&argv[optind], argc - o=
ptind);
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto out;
>> =A0 =A0 =A0 =A0 }
>
> What exactly fixes this? Looking at the code we have:
>
> =09if (optind < argc) {
> =09=09num_sources =3D argc - optind;
> =09=09sources =3D xmemdup(&argv[optind], sizeof(char *) *num_sources);
> =09} else {
> =09=09...
> =09}
>
> Which should do what you want.

Unfortunately it doesn't do what I want. If I invoke "boot -l" on the bb
shell, I get optind=3Dargc=3D2. Therefore barebox executes the "else" claus=
e,
which lists only the default bootsource.

But now I understand that replacing the "<" with "<=3D" might be a better
fix for this problem:

diff --git a/commands/boot.c b/commands/boot.c
index ba26cac..9823538 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -395,7 +395,7 @@ static int do_boot(int argc, char *argv[])
                 }
         }

-       if (optind < argc) {
+       if (optind <=3D argc) {
                 num_sources =3D argc - optind;
                 sources =3D xmemdup(&argv[optind], sizeof(char *) *
num_sources);
         } else {

What is your opinion?


> On which barebox version are you?
I'm using barebox-2014.06.0.

Best regards,
  Rolf
--8323329-674531524-1404216612=:7233
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-674531524-1404216612=:7233--
