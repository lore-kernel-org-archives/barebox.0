Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f175.google.com ([209.85.214.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty0e0-0003LT-8l
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 13:45:36 +0000
Received: by mail-ob0-f175.google.com with SMTP id tb18so3586021obb.20
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 05:45:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130123144122.0bbc6b91@e6520eb>
References: <CAHkwnC-GnpSVxs-Apoka3LWLtcqYD5PrswtxnuqB_bEKTCH4ZA@mail.gmail.com>
 <20130123144122.0bbc6b91@e6520eb>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Wed, 23 Jan 2013 14:45:13 +0100
Message-ID: <CAHkwnC_0tdYiL5GVO2_YS_-4QRKFDmA2jCu+Du5jtx5vKLuDKQ@mail.gmail.com>
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
Subject: Re: AT91SAM9260EK DFU - Error using dfu-util
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 23, 2013 at 2:41 PM, Eric B=E9nard <eric@eukrea.com> wrote:
> Hi Fabio,
>
> Le Wed, 23 Jan 2013 14:17:59 +0100,
> Fabio Porcedda <fabio.porcedda@gmail.com> a =E9crit :
>> $ dfu-util -l
>> dfu-util 0.7
>> ...
>> Found Runtime: [4321:1234] devnum=3D0, cfg=3D1, intf=3D0, alt=3D0, name=
=3D"UNDEFINED"
>> Found Runtime: [4321:1234] devnum=3D0, cfg=3D1, intf=3D0, alt=3D1, name=
=3D"UNDEFINED"
>> Found Runtime: [4321:1234] devnum=3D0, cfg=3D1, intf=3D0, alt=3D2, name=
=3D"UNDEFINED"
>>
> here you should get the name of the partitions, else that means you
> have a right problem on the USB device.
>
>>
>> -------
>> $ dfu-util -a 1 -D zImage
>> dfu-util 0.7
>> ...
>> Cannot open device
>> Opening DFU capable USB device...
>>
> try the same thing with root rights (sudo dfu-util).

Thank you very much now is working!
I'm ashamed.

Best regards
--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
