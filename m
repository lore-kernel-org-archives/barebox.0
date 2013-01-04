Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from poutre.ipv6.nerim.net ([2001:7a8:1:1::124]
 helo=poutre.nerim.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr6g3-0001pc-5c
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 12:47:12 +0000
MIME-Version: 1.0
Content-class: urn:content-classes:message
Date: Fri, 4 Jan 2013 13:46:15 +0100
Message-ID: <CA78C307B8F06747967D122FC656B153774345@SERVEUR0.nvp.local>
In-Reply-To: <20130104122303.67e97e48@skate>
References: <CA78C307B8F06747967D122FC656B15377433D@SERVEUR0.nvp.local>
 <20130104111842.69c57ae1@skate>
 <CA78C307B8F06747967D122FC656B153774344@SERVEUR0.nvp.local>
 <20130104122303.67e97e48@skate>
From: "Mylene Josserand" <Mylene.Josserand@navocap.com>
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
Subject: Re: [help] PHY driver : Unable to find a PHY (unknown ID?)
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox mailist <barebox@lists.infradead.org>

Dear Thomas,


Le 04/01/2013 12:23, Thomas Petazzoni a =E9crit :
> Dear Mylene Josserand,
>
> On Fri, 4 Jan 2013 12:03:17 +0100, Mylene Josserand wrote:
>
>>> Good to see some developers from Toulouse using Barebox! I'm close, in
>>> Colomiers.
>>
>> Yes ! We are neighbour :)
>
> Indeed :)
>
>> Free Electrons, I know you by name. And the kernel sources on your web
>> site help me a lot !
>
> Good to know this is useful.
>
>>> Which board are you targeting?
>>
>> It is a "home-made" board with a iMX27.
>
> Ok.
>
>> Hum, I did not configured it myself. I used a previous configuration of
>> the board which was :
>> "
>> static struct fec_platform_data fec_info =3D {
>> 	.xcv_type =3D MII100,
>> 	.phy_addr =3D 1,
>> };"
>>
>> How can I know which address I need to put ?
>
> Look at chapter "4.11 PHY Address strapping and LED Output Polarity
> Selection" of the LAN8700 manual. It says the PHY address is selected
> according to the value on pins PHYAD[0:4] during PHY reset. So you
> should check your board schematics and see how these pins are wired to
> find out what is the PHY address.

Ok, thank you for the explanation.
I have checked and it is the good phy address.

I will search deeper in the code the possible problem but if you have an =

idea of it, do not hesitate !

>
> Best regards,
>
> Thomas

Best regards,

-- =

Myl=E8ne JOSSERAND

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
