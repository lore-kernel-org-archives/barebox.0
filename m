Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from poutre.ipv6.nerim.net ([2001:7a8:1:1::124]
 helo=poutre.nerim.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr54O-0000tE-Ue
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 11:04:13 +0000
MIME-Version: 1.0
Content-class: urn:content-classes:message
Date: Fri, 4 Jan 2013 12:03:17 +0100
Message-ID: <CA78C307B8F06747967D122FC656B153774344@SERVEUR0.nvp.local>
In-Reply-To: <20130104111842.69c57ae1@skate>
References: <CA78C307B8F06747967D122FC656B15377433D@SERVEUR0.nvp.local>
 <20130104111842.69c57ae1@skate>
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


Thank you for your quick answer !


Le 04/01/2013 11:18, Thomas Petazzoni a =E9crit :
> Dear Mylene Josserand,
>
> Good to see some developers from Toulouse using Barebox! I'm close, in
> Colomiers.

Yes ! We are neighbour :)
Free Electrons, I know you by name. And the kernel sources on your web =

site help me a lot !

>
> On Fri, 4 Jan 2013 10:09:05 +0100, Mylene Josserand wrote:
>
>> I am using the master branch (maybe I need to checkout a tag ?). The
>> ethernet of my board is a SMSC LAN8700 and the microchip is iMX27.
>>
>> I have configured the new source of barebox to use the Phylib and MII
>> drivers. When my barebox starts, I have an error about the PHY driver :
>
> Which board are you targeting?

It is a "home-made" board with a iMX27.

>
>> The SMSC LAN8700 is here but I can not make it work !
>>
>> I have added some prints on the phy.c and the problem is in the fonction
>> "mdiobus_scan" :
>>
>> if (!edev->phydev) {
>> 	if (addr>=3D 0) {
>> 		dev =3D mdiobus_scan(bus, addr);
>> 		if (!dev) {<<  Failed here
>> 			ret =3D -EIO;
>> 			goto fail;
>> 		}
>>
>> Did I miss something ?
>
> Do you have a correct PHY address in the fec_platform_data structure in
> your board file?

Hum, I did not configured it myself. I used a previous configuration of =

the board which was :
"
static struct fec_platform_data fec_info =3D {
	.xcv_type =3D MII100,
	.phy_addr =3D 1,
};"

How can I know which address I need to put ?

Sorry for, maybe, "newbie" question but I am self-taught in kernel =

development.

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
