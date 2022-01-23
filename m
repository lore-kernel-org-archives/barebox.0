Delivery-date: Sun, 23 Jan 2022 11:00:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBZfh-00AlPx-Vv
	for lore@lore.pengutronix.de; Sun, 23 Jan 2022 11:00:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBZfg-0006O5-QT
	for lore@pengutronix.de; Sun, 23 Jan 2022 11:00:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yzEfE5UGyWgSoW+zuX36J6L+Xh0SGdh+2hHYeX0EH2I=; b=c8o
	8/pSfubpP1Rv9R4OycShXMQ9cj0uPNKL2NvsZlrTyzFbk6wpN9OeMA2o4d9Lb+CnlZHIyuhIsxa9A
	6J/UQjo3T66mQvySPQCmbrh/Nbbue2ZObjpgrrh9Vyfia5r+FMuuRrPTJcMb0C62aWbV2rucs9N4L
	dmjhAvLwH+t0WIgwsvK9A2YCMNnLrSo3/NULUzCpfxyXaW7IpKF6lTeVzdMqYv/XK9ueCyeZWUuGo
	1wqVOtEjtcYYlks4rrIxwkngmEiO4sMDd5rdLlpDZLpOBz4ZtAeYszr8o/cU04sdZO2ONnk/+S03F
	BYZsNDT1X2UfirubwB9FM9oHNUq3FMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBZe1-000aFD-62; Sun, 23 Jan 2022 09:58:45 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBZdv-000aEH-U4
 for barebox@lists.infradead.org; Sun, 23 Jan 2022 09:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1642931916;
 bh=YbTlsvyQlViX7FXRzXvwwdl6JoB9nppTMWFZrMd7htU=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=fAVz5qySBtPoQnYynVEKB+WiRgFd8NEzCSx6BUsVWxMKrDe+z/MeeqiRWyV8TGtof
 V5+3JPiIhfpex+XLKzJtPzMyPnpffCHHpuwaQBQEto1+a8zPR3M7G4UCQ4SlmrByoN
 tPxghK7A3zoPKO/yTylmFG5eglgIvEAiFz/Rx+wU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.232] ([80.245.79.232]) by web-mail.gmx.net
 (3c-app-gmx-bs30.server.lan [172.19.170.82]) (via HTTP); Sun, 23 Jan 2022
 10:58:36 +0100
MIME-Version: 1.0
Message-ID: <trinity-82a62e55-a3b0-43a3-8656-8a983119c309-1642931916783@3c-app-gmx-bs30>
From: Frank Wunderlich <frank-w@public-files.de>
To: barebox@lists.infradead.org
Date: Sun, 23 Jan 2022 10:58:36 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:vEXOPSJ8wLioJWsW1pK7EyGxOEFEY6t/VcDl4kep5NKvLpU2uXj6UteYOOuUOqpoYsBZf
 86843JKe17IRUrXuB94BwDl6NzQ599k+9MZWo0Ug3JRp7ozSTe/lkx2ccGZqM6jnRfdPnCJp3Mw0
 IZFr8SZZIrAZ8KL5x10foYQeuQzioWA0BVMY/atOEIECgYJIs/jrhmLh+uLWYodfzNJDB/tVJEdn
 q4L5PmR/9h3laSqzY5K566SGlKgKynkkDeMkcW+vkpvb6Ml4YOXexNRP35Jx5uUcatdBVK2OiSGc
 QE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:HNGS8z6rJTY=:5VhZ1qmfa1W0L20lduXPDA
 gozt+5+qhSYv/hNQSbla5CxC9JfThDfpnaTLXyw3euXkCR6pvU7lEi6JoMa2Q5WjRehH1Enc2
 iPpOHsCzpgEMqoXjHbkeTB26IBjPjfjHmwINtejyQhIBBAf/McgJwSyVcqSwC4ZSustbTHgGX
 nlsH3YE6vnj7jV74vrFQOPjgWwfZyNovZ6VvWHJxvtW/4pFwi4AkE52s0zvT8TETPslwC72Gk
 EnVChx/MQkQLuRk79pe/zoX3xAKGiRz+eqc3xdE495HQqR9y/cntPsZ8bYSjDW62PBhC6yu/h
 ZoGfoF+XXk8fMHcGOTu44Nq8uV0RJBRC+i4AJ8zY0Ml0mcGvipmHmJWlpD7YO01WL1AtsE3xM
 mmnRbwRa+Kn+/uYyx/i5C4uVCbxp99KaOoEHtnt/+u3EUujslWZzrkhSGwkvGYqtQvMGUQqz6
 hS1IOAUk2FAUBue1aJgRXxn1HUFvoNgXJ6/gliil2nwQiElY+z6gU5VYR2TeLZ7g+bAH7f3Zk
 yr3/KE/MaQc+iriIDrxsamNq4Hk7pShoaFRB4/Ao/zGJZ6wFwiVpkcPXq/MXZ0khKGWeGbyyq
 j4LAm3MVGrGuk6vAT39fhau7sG+Dho5a7ZflfLxzl4CDgatqf8MCjR8+G8cE7uYX2C+OuI9mz
 qB4sXvYMdARLpw/wG2VXgAriIxw0VXhvxxxOIoRIlAzNrEw/CQ/7nqRdvnWy+jPZrE7gfKgmq
 aHwzc/GLfRhuBTCJUSYif0tMM4JnRNO0LlqoLHPVfmmnxoXfxoRNdE4yifBPwkd5qrvDq39Fo
 wbzC8qj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_015840_326587_33FFFD97 
X-CRM114-Status: UNSURE (   7.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: use string as variable name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

is it possible to use a string as variable-name?

example:

i=1
img_$i=foo

now i have defined $img_1, but how to display it using $i again?

echo ${img_$i}
echo ${img_${i}}

alternative may be a variable-array, but it seems not possible

img[$i]=bar
img[1]=bar: No such file or directory

i just want to create a dynamic list and access the items of this list by index

another way may be appending new string with separator to existing string and split afterwards,
but then i have the index-problem again.

i know barebox shell is limited (but much more mighty than expected for just a bootloader),
but maybe it is possible :)

any idea?

regards Frank


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

