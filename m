Delivery-date: Mon, 12 Jun 2023 16:27:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8iW5-003vNR-Ez
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 16:27:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8iW3-0005O3-1M
	for lore@pengutronix.de; Mon, 12 Jun 2023 16:27:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hwp2r7TGrKRYaBFyxdTuuSH9pJW3uf7uNF5nwCczt38=; b=CtgWRB9IT6znZKAOvtu94ZlPna
	o5ZUGICOFpqrkNWgGZ2XWdUYmQ+fUjOv/g4yHpHdCE3CQe8XGG8U1cq91f1rFeHele1pmIiFMQbz+
	gVLTi4bMfUXP9ajM/5v4sFSOzAP1ITY0wjI62UFPcX4tUCmFsWuRfsSQzrRh3t8hlhCf8RbKO8hxK
	v2GhJ36hmmT2pXcF2YWD0w5wYmlm3dRvjycZIPfESgrGvrsUUVFqVOF19o1DYJ95iat/il0cN5Qf9
	A2ZEH+qPq6E4itWQsG3bbP/hiBdnzX40W/bTllXXGuJUeFaqfeoc4H3cDHEZQ6qU3cAh2v/hD8Jrb
	M3fomwZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8iUs-004IE6-2H;
	Mon, 12 Jun 2023 14:26:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8iUp-004ID6-2n
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 14:26:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q8iUk-0005BG-PH
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 16:26:10 +0200
Message-ID: <f4fc4921-e722-353c-c901-7af8976043e4@pengutronix.de>
Date: Mon, 12 Jun 2023 16:26:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US, de-DE
To: barebox@lists.infradead.org
From: Johannes Zink <j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_072615_901177_B598F61D 
X-CRM114-Status: GOOD (  10.68  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [Bug] Nullpointer Exception in of_diff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I observed a Nullpointer Exception in barebox barebox 2023.05.0 on a Rock3a 
when calling

of_diff . .

on the shell. Please find the complete dump below:

barebox@Radxa ROCK3 Model A:/ of_diff . . 

diff . . 

Cannot read .: No such file or directory 

DABT (current EL) exception (ESR 0x9600000b) at 0x000000000000000e 

elr: 000000007fd4b8b0 lr : 000000007fd57ba0 

x0 : 000000004037ca60 x1 : 000000000000000a 

x2 : 0000000000000000 x3 : 000000007fd21910
x4 : 0000000000000002 x5 : 0000000000000020
x6 : 0000000000000000 x7 : 0000000000000000
x8 : 000000007ffefad8 x9 : 0000000000000000
x10: 0000000000000003 x11: 00000000405015c8
x12: 0000000000000000 x13: 0000000040500d38
x14: 00000000403786e0 x15: 0000000000000001
x16: 000000007ffef4b8 x17: 0000000000000001
x18: 000000007ffefa50 x19: fffffffffffffffe
x20: fffffffffffffffe x21: fffffffffffffffe
x22: 0000000000000001 x23: 0000000000000003
x24: 0000000000000001 x25: 0000000000000000
x26: 0000000000000008 x27: 0000000040500978
x28: 0000000000000000 x29: 000000007ffefae0

Call trace:
[<7fd4b8b0>] (of_delete_node+0x4c/0xf8) from [<7fd57ba0>] (do_of_diff+0x78/0xec)
[<7fd57ba0>] (do_of_diff+0x78/0xec) from [<7fd069c4>] (execute_command+0x44/0x8c)
[<7fd069c4>] (execute_command+0x44/0x8c) from [<7fd03dcc>] 
(execute_binfmt+0x68/0xa0)
[<7fd03dcc>] (execute_binfmt+0x68/0xa0) from [<7fd0f2c4>] 
(run_list_real+0x8e4/0x9d0)
[<7fd0f2c4>] (run_list_real+0x8e4/0x9d0) from [<7fd0e834>] 
(parse_stream_outer+0x140/0x1ec)
[<7fd0e834>] (parse_stream_outer+0x140/0x1ec) from [<7fd0f604>] 
(run_shell+0x60/0x98)
[<7fd0f604>] (run_shell+0x60/0x98) from [<7fd017f4>] (run_init+0x110/0x250)
[<7fd017f4>] (run_init+0x110/0x250) from [<7fd01984>] (start_barebox+0x50/0x8c)
[<7fd01984>] (start_barebox+0x50/0x8c) from [<7fd7f454>] 
(barebox_non_pbl_start+0x13c/0x170)
[<7fd7f454>] (barebox_non_pbl_start+0x13c/0x170) from [<7fd0000c>] 
(__bare_init_start+0x0/0x4)
[<7fd0000c>] (__bare_init_start+0x0/0x4) from [<00a0f6f0>] (0xa0f6f0)
[<00a0f6f0>] (0xa0f6f0) from [<00a0f320>] (0xa0f320)
panic: unhandled exception


The behaviour is stable and reproducable on a Rock3A, probably also on other 
boards. Maybe someone of the more experienced barebox devs already has an idea 
what's going wrong here and wants to have a closer look, otherwise I'd probably 
give it a shot within the next few days (and if I manage to find some spare 
time...)

Best regards
Johannes


-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


