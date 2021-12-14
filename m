Delivery-date: Tue, 14 Dec 2021 22:31:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxFOX-006bH4-U8
	for lore@lore.pengutronix.de; Tue, 14 Dec 2021 22:31:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxFOW-0000YT-Ka
	for lore@pengutronix.de; Tue, 14 Dec 2021 22:31:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aWXoqojsJ5ZPNWTaVpi7mMotMynLXOBz77h4TNg+HHM=; b=kZrvI+ggkA8yWm91I7VNZ0ms50
	Gn/g2qCA5Nu+YVgmj3jwlf46UaoPL1S7meDy+DtUyy4Nk5gxn7HwGEF9jA0fgGn781WpnvJj9cJKB
	pETo5kf0CJuE1TAYzJ6+yoQFwJuruOQ/rtpQ4b8QpC/rj2QwokopZ04a/W7JDrnnd396IUb4NtJMk
	/qTXSPFojxOzgnAO8O6Se0DGhsCnOnG7O5y3VonCQpDz/1zydFYnVjNPY/l1DnbnLSEnsKPuRTyBB
	Zjle+A5sGuOwYXHLVf6Zs5X/HmvqZpw33Z5sPdA6RKNtDBUp96fsNYGoonZocQoIuot902ic0psX8
	JR3np/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxFMY-00Fq9l-RZ; Tue, 14 Dec 2021 21:29:30 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxFMS-00Fq9A-I3
 for barebox@lists.infradead.org; Tue, 14 Dec 2021 21:29:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 65F9340343;
 Tue, 14 Dec 2021 22:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639517327;
 bh=nKqfco19AQDsgvryONZUzsTJcqmYnd/g6jjHiOEbl0s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QB1hvpx8qn8Vhqm3mC5d7Gs2Z66Xntc34CPmSaezYYtncJRKhom6ozAFhqzGz0TsY
 HXcU+yIbEl8uhZt1rUs0qEvtjnzbVUc1q7jqYYat8fN0AENOCNntptHYTnRN0ln1SS
 28M+MqKkfWOx68fsT9thhuHOAISVuO69lN1Piv9spOYYJFCw82TL4uIiD19d+NJidS
 VmSPGc75wp0JJuxKhl5C/bujo9mjM8N17oS1oaVVEwL31xV/UNH2VuORzLIsh4WrPL
 C+xXuMaFyqTtMM/hap9kpYl1kHTJ0si3Z0FQr2PU1aNIgMxSSCpEJcAhTWzJamKlhx
 Ej98kR8NAR2HA==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IINM1oiXFeCL; Tue, 14 Dec 2021 22:28:47 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id F1EA8400B1;
 Tue, 14 Dec 2021 22:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639517327;
 bh=nKqfco19AQDsgvryONZUzsTJcqmYnd/g6jjHiOEbl0s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QB1hvpx8qn8Vhqm3mC5d7Gs2Z66Xntc34CPmSaezYYtncJRKhom6ozAFhqzGz0TsY
 HXcU+yIbEl8uhZt1rUs0qEvtjnzbVUc1q7jqYYat8fN0AENOCNntptHYTnRN0ln1SS
 28M+MqKkfWOx68fsT9thhuHOAISVuO69lN1Piv9spOYYJFCw82TL4uIiD19d+NJidS
 VmSPGc75wp0JJuxKhl5C/bujo9mjM8N17oS1oaVVEwL31xV/UNH2VuORzLIsh4WrPL
 C+xXuMaFyqTtMM/hap9kpYl1kHTJ0si3Z0FQr2PU1aNIgMxSSCpEJcAhTWzJamKlhx
 Ej98kR8NAR2HA==
MIME-Version: 1.0
Date: Tue, 14 Dec 2021 22:28:46 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
Organization: Inside M2M GmbH
In-Reply-To: <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
Message-ID: <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_132924_965211_8AF64CA5 
X-CRM114-Status: GOOD (  12.83  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Dear Trent, dear mailing list people,

I managed to - somehow - utilize an onboard EEPROM for this.

On 2021-12-03 18:52, Trent Piepho wrote:

> Yes you can use your EEPROM to store state and use rauc.  One could

This is barebox devicetree I come up with:

/ {
	aliases {
		state = &state_eeprom;
	};

	state_eeprom: state_eeprom {
		#address-cells = <1>;
		#size-cells = <1>;
		compatible = "barebox,state";
		magic = <0xcafebabe>;
		backend-type = "raw";
		backend = <&backend_state_eeprom>;
		backend-storage-type = "direct";
		backend-stridesize = <54>;
		/* keep-previous-content; */

		bootstate {
			#address-cells = <1>;
			#size-cells = <1>;
			last_chosen {
				reg = <0x0 0x4>;
				type = "uint32";
			};
			system0 {
				#address-cells = <1>;
				#size-cells = <1>;
				remaining_attempts {
					reg = <0x4 0x4>;
					type = "uint32";
					default = <3>;
				};
				priority {
					reg = <0x8 0x4>;
					type = "uint32";
					default = <21>;
				};
				ok {
					reg = <0xc 0x4>;
					type = "uint32";
					default = <0>;
				};
			};
			system1 {
				#address-cells = <1>;
				#size-cells = <1>;
				remaining_attempts {
					reg = <0x10 0x4>;
					type = "uint32";
					default = <3>;
				};
				priority {
					reg = <0x14 0x4>;
					type = "uint32";
					default = <20>;
				};
				ok {
					reg = <0x18 0x4>;
					type = "uint32";
					default = <0>;
				};
			};
		};
	};
};

&i2c0 {
	baseboard_eeprom@50  {
		partitions {
			compatible = "fixed-partitions";
			#size-cells = <1>;
			#address-cells = <1>;
			backend_state_eeprom: state@0 {
				reg = <0x0 0x100>;
				label = "state-eeprom";
			};
		};
	};
};


And this kinda works. And reveals more questions, I am not familiar with
barebox-state and - I admit - devicetree, yet. The problem was for me to 
address
the onboard I2C EEPROM but I managed it by digging with devinfo, this is 
a snippet
from "devinfo i2c0":

         baseboard_eeprom@50 {
                 compatible = "atmel,24c256";
                 reg = <0x50>;
                 #address-cells = <0x1>;
                 #size-cells = <0x1>;
                 baseboard_data@0 {
                         reg = <0x0 0x100>;
                 };
                 partitions {
                         compatible = "fixed-partitions";
                         #size-cells = <0x1>;
                         #address-cells = <0x1>;
                         state@0 {
                                 reg = <0x0 0x100>;
                                 label = "state-eeprom";
                                 phandle = <0x5d>;
                         };
                 };
         };

Does this and wit device tree look reasonable?

barebox, booting, puts out:

state: New state registered 'state'
state: Using bucket 0@0x00000000

What I wonder is, when this works, is in linux for the userspace the 
EEPROM still
write- and readable or blocked? I cant't judge because I suffer from 
this:

When linux boots, this happens:

nvmem 0-00501: nvmem: invalid reg on 
/ocp/interconnect@44c00000/segment@200000/target-module@b000/i2c@0/baseboard_eeprom@50/partitions
at24: probe of 0-0050 failed with error -22

Is this still something like this:

https://lkml.org/lkml/2020/4/28/411

?


What are those reg = < X Y > entries, are those in this use case offset 
+ length?

What me bugs more is, how should a devicetree setup look like (is there 
a reasonable example?)
to make the same in a file in the first FAT partition, is this possible? 
In the state specification
I read it should be able to be done by a file but ... I don't get it.

Alternatively, in the MBR I have on my MMC ther should be plenty of 
bytes be available for this,
can I address areas raw while a partition is over it?
You see, I read much about partitions in MMC being OF partitions, how do 
they live among with
mmcblk0p1 .. mmcblk0p3?

The problem is, my EEPROM aproach is nice to learn but in production it 
is hard write proteccted.
I just realized.

Kind Regards
Konsti















_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

