Delivery-date: Thu, 12 Jun 2025 15:21:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhru-006WPF-0O
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 15:21:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhrt-0005aj-JM
	for lore@pengutronix.de; Thu, 12 Jun 2025 15:21:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XarvPSx8D8RTt5FdPTTFDyBZsxVErA4HqAH36bu+154=; b=0wvOczGEl7hYfpGzpUo8hVApHk
	PBlp+lPwAMTLd9Vdl5DYAcltmyi/mXQGm8w4+0M/QdqebZd93314nf3MS77TE1e+vdoOKv2GrrXD5
	tp1pCbvs9QyvBzwnunSg72jIARYYMPsnhk42itnCJL1wSz62uX+roa52By8Mn+NHiVdbMKcpiZc29
	JSh8pXFIk7qhWIs94iGiVIShK510PPmWRkb4uxP8C5L5MOBsWOyYI/8M3sr4e24QtWf7KULBhM/IU
	ztpcFPVREoMeTYzMdwJRgj1o2hOD6Gh6oux2vfc51yMxF3OOuI75wOAr7Tf5QdpmUV1kIiCXB4zR6
	T4caoIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhrM-0000000DPbx-0qqG;
	Thu, 12 Jun 2025 13:20:48 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPh5f-0000000DGMS-0aVp
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 12:31:32 +0000
Received: from fedora ([178.24.249.19]) by mrelayeu.kundenserver.de (mreue108
 [213.165.67.113]) with ESMTPSA (Nemesis) id 1MF35K-1uaji92Wme-003MOL; Thu, 12
 Jun 2025 14:31:25 +0200
Date: Thu, 12 Jun 2025 14:31:14 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <aErIkgAl4zIUNGjc@fedora>
References: <20250607134711.48122-1-johannes@gnu-linux.rocks>
 <aElxD6ELuh5xyAki@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aElxD6ELuh5xyAki@pengutronix.de>
X-Provags-ID: V03:K1:CB68VpL5Zy0CQhyEkdivrVjrpIf4ffJ8e5G0GhySzaDccz8jjfL
 +ZSuJLPMgAXUm14dHZVerrEm0cze6rbLaeFzJ6Gyc5MSCT2VkWigAcssOI+Zgp4zU6mDV9T
 37ViFfwBeVQlOgrU6geKZCdb79NSCVykJOIkrD77jfrkgVlhHtIfOzHr82ORDw2sspcIcvp
 RBK18Ult+oe/JhpGE0Ypg==
UI-OutboundReport: notjunk:1;M01:P0:WwJyrO51OYU=;vDMu1Vzv8X19J8bSSXYJx0+y5Gq
 OxJgIFLNQ+Do6iysOkZa1kByaKtIoP6rsCYg/LEnFFGlo9Bj4mUlK1CF5kaJRbQWMm+fHGyQt
 AyV10lN/3cmyxBWPzh+kQauzEx103eL/ftckuHqaxOpQ5uVhrkwPTAw0z7Bp9IGKyivEmNhzm
 /XqH062ww4ZtzKzJ506u9IQtzBr84bPPpdlvQXC0pzKUsb6vhZDufvjOoFmG+8BI0ahMeAUB8
 L5GO6ynrWVLGJ8wavNa1Vn8kzSQi5ieK8PFB2f14a2Btkox4RRT2V1YE2MdUbettslSjRiNmx
 +i0ZgMkM2eOHjKsIultP5KqlT+MqE44qrxl+HYDnKxsgUFrksVNg55e4r8nVDsejE0qhJKnrY
 7g7qxNboo3H1JMkGN564OZ3TLBGvcHBTO04D5VbNFTf85UVNDYAZAkNUMHu3ds15KqPr9kOLt
 yW6baO8lQrJN93eowvinczt/GznB/jF+P5H4PUeX3shlY91mHiSOZS0kJBBpXkgRJjocvvxkj
 3DBVzuONXxNfi2u0UbWQKyIK2O8wToLXr/XElClIqg9DuBd0ijotD7TaBOssEnjwJa5WPvF1b
 o7ONB9bSu3CQzTMojODj6gBe3RegE3AJ6Mn6W3b+ku5vhovvS2qJ6IRKZrOnX9tPTBjmIy1cz
 QZJXS6glxZEmA68EcakEtTC8K7ZoQ6C5V6qRPGkuKVV+FXTOUq1wz0FAonVckPuUzKP9EQ9/E
 DjLCNjsiP0p5MWLI35MeDtVNz/51+gFSbCop3vi0NRqrVevdf+xcVizqPPZ4lYidviSEv+646
 TzLuOKWZHT8AxEfqGhzHfKYXWkDW+gIkQ8y9F0EEzt+KZ7/wCSl9E7U4RGN+i1p1ArsA4FeWu
 ItJXffSAnDbtWGv30WlYlXIuV+15qffLw+z6EbLfS4lbSsmbfA7eTm26PQ5ryQx46DIF9Ny/A
 89uggRQGSkF/Cig4nt7tyZSLnHGTDbS2DvM8zl8tMHaXi9jr4ZcAkPVaDlfbO7ay8t8lCUxS2
 ExVtGRt4WJ41YgAtDpn2voAYtwW+TPLf0N77neDl5FjUcOlktARKPEsz4jQHzxGyqabAZ0b6i
 +coXBDe0THIThVMRp1vAEOM/pK04sep4A0dnlTSLWVxOISGwO7suSuNem+ysm2gE5j+RzwxNq
 goljXRrJGlS1oF++SAgxLVNBtJH/DqQR2dgaT9O9IfCCwhhpFeUG50xmErfqktkw/62Dezw7/
 zKiWoJRBLOe1gMUITlf3RH38iRJL1RCp5feltK3laSFGmMgJ9BMDPnnu9LwnrtWFvuB7SqjVb
 R598bIt/XgfKa/9Q96Z6RI7+rxdUXKcDt7xFdMxxi7tbHin/polGFh+ts0Bhx7shCaarMAJxX
 qfRktNHjgsvA7chd6MtQfnPsdHZdpg9ilWeoA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_053131_474605_41650D0F 
X-CRM114-Status: UNSURE (   5.46  )
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
Cc: barebox@lists.infradead.org, michael.graichen@hotmail.com, a.fatoum@barebox.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Added support for Zynq 7000 FPGA firmware loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

thanks for testing and the feedback. I will add it in version 2.

Best regards,
Johannes



