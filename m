Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am1on0135.outbound.protection.outlook.com
 ([157.56.112.135] helo=emea01-am1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2eBR-0007qA-T1
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 11:28:40 +0000
From: "Gabor Janak (g.janak@agilion.de)" <g.janak@agilion.de>
Date: Wed, 10 Jun 2015 11:28:10 +0000
Message-ID: <VI1PR03MB1200A2A421630F6A45CA83CD98BD0@VI1PR03MB1200.eurprd03.prod.outlook.com>
References: <1433833465-6569-1-git-send-email-w.egorov@phytec.de>
 <20150610043237.GT6325@pengutronix.de> <5577DCBB.7090705@phytec.de>
In-Reply-To: <5577DCBB.7090705@phytec.de>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: AW: [PATCH] net: Set the actual ethaddr in
 register_preset_mac_address()
To: Wadim Egorov <w.egorov@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

This is an alternative patch - but not on git trunk - ist againts the last =
tag i are allowed to use.

I don't know if the ethaddr should be copied  in register_preset_mac_addres=
s or after calling.

below is only tested on am335x.



-------SNIP------

Fix missing eheraddr setting. If some modul register an MAC for an network =
device
like cpsw, the etheraddr of the device was never set.

This is a workaround only. Don't put upstream.


--- barebox-mlo-2014.09.0/net/eth.c	2014-09-04 15:28:52.000000000 +0200
+++ barebox-mlo-2014.09.0/net/eth.c	2014-09-23 17:18:21.592884794 +0200
@@ -358,9 +357,8 @@
 	list_add_tail(&edev->list, &netdev_list);
 =

 	ret =3D eth_get_registered_ethaddr(edev, ethaddr);
-	if (!ret)
+	if (!ret && is_valid_ether_addr(ethaddr))
 		found =3D 1;
-
 	if (!found) {
 		ret =3D edev->get_ethaddr(edev, ethaddr);
 		if (!ret)
@@ -368,7 +366,11 @@
 	}
 =

 	if (found)
+	{
 		register_preset_mac_address(edev, ethaddr);
+		/* fix missing mac in edev */
+		memcpy(edev->ethaddr,ethaddr,6);
+	}
 =

 	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->parent &&
 			edev->parent->device_node)



-------SNIP------




-----Urspr=FCngliche Nachricht-----
Von: barebox [mailto:barebox-bounces@lists.infradead.org] Im Auftrag von Wa=
dim Egorov
Gesendet: Mittwoch, 10. Juni 2015 08:44
An: Sascha Hauer
Cc: barebox@lists.infradead.org
Betreff: Re: [PATCH] net: Set the actual ethaddr in register_preset_mac_add=
ress()

Hello Sascha,


On 10.06.2015 06:32, Sascha Hauer wrote:
> Hi Wadim,
>
> On Tue, Jun 09, 2015 at 09:04:25AM +0200, Wadim Egorov wrote:
>> Set the ethaddr for the current edev.
>>
>> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
>> ---
>>   net/eth.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/net/eth.c b/net/eth.c
>> index 89bddba..03e0a2e 100644
>> --- a/net/eth.c
>> +++ b/net/eth.c
>> @@ -49,6 +49,7 @@ static void register_preset_mac_address(struct eth_dev=
ice *edev, const char *eth
>>   	ethaddr_to_string(ethaddr, ethaddr_str);
>>   =

>>   	if (is_valid_ether_addr(ethaddr)) {
>> +		memcpy(edev->ethaddr, ethaddr, 6);
>>   		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
>>   		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
>>   	}
> In which case is this necessary? Normally a dev_set_param on "ethaddr"
> should already set edev->ethaddr, there should be no need to copy this =

> manually.
>
> Sascha

when booting from ethernet on the AM335x, net_new() (called in net_udp_new)=
 will check if ethaddr is valid. This check fails, because ethaddr is not s=
et at this moment and a random MAC will be used.

Wadim
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
