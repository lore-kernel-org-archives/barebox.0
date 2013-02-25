Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f178.google.com ([209.85.214.178])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9zyQ-0008I6-DW
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 15:28:14 +0000
Received: by mail-ob0-f178.google.com with SMTP id wd20so2999840obb.9
 for <barebox@lists.infradead.org>; Mon, 25 Feb 2013 07:28:13 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130225131604.GC10258@game.jcrosoft.org>
References: <1361435514-4474-1-git-send-email-fabio.porcedda@gmail.com>
 <20130225120236.GB10258@game.jcrosoft.org>
 <CAHkwnC_MRqyzG+YPMaxdWCxpOied0ig0ETAPZMvm=5=Zu4kGDw@mail.gmail.com>
 <20130225131604.GC10258@game.jcrosoft.org>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Mon, 25 Feb 2013 16:27:53 +0100
Message-ID: <CAHkwnC8hwk3u0CnZBVUz2tz4CKhQ2Yd4nOn5uuJacM781S_m3g@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fix compiler warnings: use puts() instead of printf()
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Vicente <vicencb@gmail.com>

On Mon, Feb 25, 2013 at 2:16 PM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 13:23 Mon 25 Feb     , Fabio Porcedda wrote:
>> On Mon, Feb 25, 2013 at 1:02 PM, Jean-Christophe PLAGNIOL-VILLARD
>> <plagnioj@jcrosoft.com> wrote:
>> > On 09:31 Thu 21 Feb     , Fabio Porcedda wrote:
>> >> Use puts() because printf() isn't necessary,
>> >> to fix the following compiler warnings:
>> >>
>> >> /barebox/common/menu.c: In function =91menu_show=92:
>> >> /barebox/common/menu.c:277:4: warning: format not a string literal an=
d no format arguments [-Wformat-security]
>> >>
>> >> /barebox/scripts/omap4_usbboot.c: In function =91read_asic_id=92:
>> >> /barebox/scripts/omap4_usbboot.c:101:3: warning: format not a string =
literal and no format arguments [-Wformat-security]
>> >
>> > Sascha revert this please this add a "\n" that we do not want
>> > specially on the menu
>>
>> I've already sent a patch to fix the newline problem and the warning too.
>> Reverting the patch doesn't fix the warning.
> the patch is wrong we revert you send the write one

I understand that the patch is wrong but the patch cannot be simply
reverted because in master there is already a partial fix for it:
"OMAP4 USB BOOT: remove double line endings".

Only half of the patch can be reverted but instead of reverting it we
can fix it.
I've already sent the patch to fix the remaining part:
" menu: fix remove superfluous newline: change puts() -> printf("%s, )"

What do you think about that patch?

Best regards
Fabio Porcedda

> Best Regards,
> J.
>>
>> Best regards
>> Fabio Porcedda
>>
>> > Best Regards,
>> > J.
>> >>
>> >> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
>> >> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> >> Cc: Vicente <vicencb@gmail.com>
>> >> ---
>> >>  common/menu.c           | 2 +-
>> >>  scripts/omap4_usbboot.c | 2 +-
>> >>  2 files changed, 2 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/common/menu.c b/common/menu.c
>> >> index ce93838..30dced7 100644
>> >> --- a/common/menu.c
>> >> +++ b/common/menu.c
>> >> @@ -274,7 +274,7 @@ int menu_show(struct menu *m)
>> >>                       printf("Auto Select in");
>> >>               } else {
>> >>                       auto_display_len =3D strlen(m->auto_display);
>> >> -                     printf(m->auto_display);
>> >> +                     puts(m->auto_display);
>> >>               }
>> >>               printf(" %2d", countdown--);
>> >>       }
>> >> diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
>> >> index 8c5775d..34e53c0 100644
>> >> --- a/scripts/omap4_usbboot.c
>> >> +++ b/scripts/omap4_usbboot.c
>> >> @@ -98,7 +98,7 @@ int read_asic_id(struct usb_handle *usb)
>> >>                       sprintf(line+4+j*3, "%02X ", id[i+j]);
>> >>               line[4+j*3+0] =3D '\n';
>> >>               line[4+j*3+1] =3D 0;
>> >> -             printf(line);
>> >> +             puts(line);
>> >>       }
>> >>       ret =3D 0;
>> >>       for (i =3D 1, j =3D 0; i < sizeof(id) && j < id[0]; i +=3D 2+id=
[i+1], j++) {
>> >> --
>> >> 1.8.1.1
>> >>
>>
>>
>>
>> --
>> Fabio Porcedda



--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
