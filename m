Delivery-date: Thu, 11 Mar 2021 18:08:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnw-0003W4-N6
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 18:08:56 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnv-0003HS-Uj
	for lore@pengutronix.de; Thu, 11 Mar 2021 18:08:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eq3UxGZ29oF6f7viZWbDS7KJLRIwiV5M6Do4Lw2A6Uc=; b=kcvEKeYIbu1Y5P
	hXBKTCsLlN2q+qTM4gPPOVYjD7Gc4i30EfwRpQ/SwyKeegk+4iaDk4/oPJBU+k9OWzHmu4sOrAIBa
	8syCtC1vcIefdtdw+6aivHM6oFptwz7v7B4DfjEu+FIxc9jZrWRZ9csYDJOTeF7c7EqsVtSfcO1UF
	2zXIEb2G4LEovf2YFGFNVg4LziPnQR8hDTgLWDl4wEZ8BSiBUGSq2P9N0gLWUj83U/8jrGMXLSlCo
	6HtBG0i5K8nunyjxgFwFx4mZCq+++UMVKqnLysowCat/f6iD5vCFqPbFEMR7dTluSm7yHVWNqQQJa
	8V0XOuj+N2KjtCPw1c5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKOmu-009elB-Tm; Thu, 11 Mar 2021 17:07:53 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKOmY-009ehe-Sh
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 17:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1615482451; x=1647018451; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=+RLNJjXGV8rYlynf1j2rxGc9sD5eLHlH7RAI0PdLP1E=;
 b=EaI+e2RW2cPWdO3N+fxGxhFrhIj0jNEdeuPUP1qO88M+B68xRFmZ/BIc
 NjPNUQ/zeVzsqxYHMBGdUm21OnQkMV8rp6IfXTaoWplZcd7TEvspwtsWB
 T6lRfQPPsqKkDWvDiDJHr/fMznfPpDVbUCCsqeosYQFjVnQvPGM3bOHXh
 1HaHyMcZH+//qMXwguXlKseSL6AADJ1y8aU9Z339wOc/VJifwP5MmFXxJ
 HHISEQEXpJGsSz4DpNQw8XagPseZ9FpEse/Kye/DYjk+cGkZg5BOn32BC
 seH4Ct8KzPaareN/o+7JgS/fhQOsmkm6GQnLw6XKtiq+KoeIk12y5Fw4d w==;
IronPort-SDR: SzgvP9Ru4dvD+ACjEraCVUekvZ1yIpfuQUmbwA9aLHUx9STsAT1tpILrov4yKtaQBO0kSzk3N2
 HFJzGTaZ0kI/oZyLlCWuK+qlb5aAwu3NGTyzU+K0pmiBm8+F4V+Otge+ah2CKTh9Ql8+etFGkH
 TRaPeTMuaqkPCDk1x39ZCjfiqSkPhOsGl64Bsn6xejWeCNBrT4DBmB2QsEdj+ASa3S25DhQojG
 zljByXzbLTVMP6wAFUQbQh69lRLwdVuufiom8nsG8m7H1gC7rpfg1buaTJed4dqkKSmEm5zdcl
 SyE=
IronPort-HdrOrdr: A9a23:fAtK0qORfIWzLMBcT4z155DYdL4zR+YMi2QD/UZ3VBBTb4ikh9
 mj9c576TbYqhY0HEshl9eJJbWaTRrnnvRIyKQYILvKZniEhEKGN4dnhLGO/xTEGzfistJbz7
 tqaaJkCNb9ZGIK6/rSxCmdP5IezMKc8Kau7N2x815IQRtxY69tqydVYzz2LmRMSANLBYU0Gf
 Onj6J6jgGtYWgWdcj+PXUOX/HCq9rX0K3vZB4KQyQm7wOD5AnYkYLSKQSS3RsVTlp0rosKzG
 6tqWzEz5TmlvG9yBPQ92iWxZFfgsGJ8KogOOW8zu0ULTfhhyauIKRtMofy2wwdkaWL6FEpnN
 TtpFMcM8Br7nvNcgiO0H7Q8jil9TYo6XPu6VjdjnDnyPaJIA4HNw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610406000"; 
   d="scan'208";a="5802797"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] image-fit: ignore rsa by image selection
Thread-Index: AQHXFpj/davxXqFZtUqOmkBkdaqk2A==
Date: Thu, 11 Mar 2021 17:07:21 +0000
Message-ID: <20210311170334.22607-1-denis.osterland@diehl.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
MIME-Version: 1.0
X-GBS-PROC: 5x5xXKsZ7k4sJw6jWwvS4p3Trid70NcCAfrXWeuS2B+HoABx79bHc06wZt9/4whV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_170731_189388_F7B97EA3 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] image-fit: ignore rsa by image selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Denis Osterland-Heim <Denis.Osterland@diehl.com>

For hash algorithm selection, only the first argument of the tuple is
needed. The ',' is included to avoid false-positive matches.

Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
---
 common/image-fit.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 538e61f51..2c5ef7f68 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -230,11 +230,9 @@ static struct digest *fit_alloc_digest(struct device_n=
ode *sig_node,
 return ERR_PTR(-EINVAL);
 }

-if (strcmp(algo_name, "sha1,rsa2048") =3D=3D 0) {
+if (strncmp(algo_name, "sha1,", 5) =3D=3D 0) {
 algo =3D HASH_ALGO_SHA1;
-} else if (strcmp(algo_name, "sha256,rsa2048") =3D=3D 0) {
-algo =3D HASH_ALGO_SHA256;
-} else if (strcmp(algo_name, "sha256,rsa4096") =3D=3D 0) {
+} else if (strncmp(algo_name, "sha256,", 7) =3D=3D 0) {
 algo =3D HASH_ALGO_SHA256;
 } else{
 pr_err("unknown algo %s\n", algo_name);
--
2.30.2

Diehl Connectivity Solutions GmbH
Gesch=E4ftsf=FChrung: Horst Leonberger
Sitz der Gesellschaft: N=FCrnberg - Registergericht: Amtsgericht
N=FCrnberg: HRB 32315

________________________________

Der Inhalt der vorstehenden E-Mail ist nicht rechtlich bindend. Diese E-Mai=
l enthaelt vertrauliche und/oder rechtlich geschuetzte Informationen.
Informieren Sie uns bitte, wenn Sie diese E-Mail faelschlicherweise erhalte=
n haben. Bitte loeschen Sie in diesem Fall die Nachricht.
Jede unerlaubte Form der Reproduktion, Bekanntgabe, Aenderung, Verteilung u=
nd/oder Publikation dieser E-Mail ist strengstens untersagt.

- Informationen zum Datenschutz, insbesondere zu Ihren Rechten, erhalten Si=
e unter:

https://www.diehl.com/group/de/transparenz-und-informationspflichten/

The contents of the above mentioned e-mail is not legally binding. This e-m=
ail contains confidential and/or legally protected information. Please info=
rm us if you have received this e-mail by
mistake and delete it in such a case. Each unauthorized reproduction, discl=
osure, alteration, distribution and/or publication of this e-mail is strict=
ly prohibited.

- For general information on data protection and your respective rights ple=
ase visit:

https://www.diehl.com/group/en/transparency-and-information-obligations/



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

