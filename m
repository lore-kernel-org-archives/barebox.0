Delivery-date: Tue, 08 Feb 2022 19:34:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHVK1-009jhK-5O
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 19:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHVJz-0004Fh-Ou
	for lore@pengutronix.de; Tue, 08 Feb 2022 19:34:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6sVtyMWUiFyuoXDQ9comicoLRydWYqp9R2z0ELQPHA=; b=pmDHJ8vPPuSu3m
	kz8L0U8AAdMZemTRCDzKQafCsGvnUJ/N3qQzdAiDS2dFkurIq3YIhBAusHhlLdKXqxMJz8lqUgBcs
	EzdBFgawYL5yJYmqZ+wJoaZ96FRid4ALiT2Os3TUqmtruiq9uysq0NraxqbBqUvOJfAWy+JkCkE9F
	z6zwPudBAxDfWRbXWXMx8EoBJmWmheJUL8WjN2P7qdUdBxEsAhT4Ae80nJVR7AKrzFZj99D5ZEObH
	3woeQ/Fl4VwOzmwToSbPQ/UZNzJqI7RqxotTK/R4iLKGNJHH9aN8ze1FfQBgBw1zEA5O4hh2/aFb0
	QxTtXS2AIBH0PFNPE12Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHVIo-00FEZZ-4s; Tue, 08 Feb 2022 18:33:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHVIj-00FEZE-JH
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 18:33:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nHVIi-00045E-10; Tue, 08 Feb 2022 19:33:16 +0100
Message-ID: <a2444c59-2e4e-3898-46cc-63473191e203@pengutronix.de>
Date: Tue, 8 Feb 2022 19:33:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
 <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
 <20220205171233.ec081c7d777a7d267c26fdf5@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220205171233.ec081c7d777a7d267c26fdf5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_103317_672545_6C7FDEB9 
X-CRM114-Status: GOOD (  24.94  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RFC: Gitlab CI for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.02.22 15:12, Antony Pavlov wrote:
> On Mon, 31 Jan 2022 11:39:45 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hello Ahmad!
> 
>> On 30.01.22 13:00, Antony Pavlov wrote:
>>> Hi!
>>>
>>> I have made simple Gitlab CI for barebox.
>>
>> Nice.
>>
>>> Gitlab CI runner setup instruction and
>>> the source for Debian 11 docker image can be found at:
>>>
>>>   https://gitlab.com/frantony/barebox-gitlab-ci-runner
>>
>> I had tried something similar, but with Github actions
>>
>> https://github.com/a3f/barebox/actions/runs/740206381
>>
>> I didn't have the time to pursue this further. I am fine
>> with Gitlab as well.
>>
>>>
>>> Sample gitlab-ci.yaml config file:
>>>
>>>   https://gitlab.com/frantony/barebox/-/commit/b1ed597d8e67c8f76f4f98cd1c6605b936cf2471
>>
>> Here's how it looks for Github actions with emulate.pl:
>>
>> https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/build-configs.yaml
> 
> I have just update gitlab runner, please see https://gitlab.com/frantony/barebox-gitlab-ci-runner/-/commit/f90c3932f1e90f900c4d4304c6a54898a5ee0e1e
> 
> As a result runner can build barebox for openrisc architecture and run emulate.pl, see
> https://gitlab.com/frantony/barebox/-/pipelines/464224894
> 
> There is a problem with emulate.pl for MIPS (see https://gitlab.com/frantony/barebox/-/jobs/2058215656).
> 
> log/mips/console_main artifact contains the fragment:
> 
> ---- begin ----
> Hit any to stop autoboot:    3
> barebox@qemu malta:/ echo "YGIS""XTJCSB"
> YGISXTJCSB
> barebox@qemu malta:/ echo -o /cmd 'cat /env/data/config'; echo "EOVL""SAWCFS"; sh /cmd; echo "EOVL""SAWCFS" $?;
> EOVLSAWCFS
> could not open /env/data/config: No such file or directory
> EOVLSAWCFS 1
> barebox@qemu malta:/ echo -o /cmd selftest; echo "BOCZ""OJHGFV"; sh /cmd; echo "BOCZ""OJHGFV" $?;
> BOCZOJHGFV
> printf: all 116 tests passed
> progress_notifier: all 12 tests passed
> BOCZOJHGFV 0
> barebox@qemu malta:/
> ---- end ----
> 
> there is a problem: "could not open /env/data/config: No such file or directory"
> 
> How we can pass error to gitlab runner? Now runner reports that there is no error.

That's ok. It's preferable to have the config built into barebox, but
the fallback for getting the .config out of the build directory seems
to work alright.

> 
>>>
>>> @Ahmad
>>>
>>> I suppose we can add your qemu barebox/test/emulate.pl tests into CI.
>>
>> Here is the Github action config for the tests:
>> https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/vm-tests.yaml
>>
>> Any thoughts on how/if to integrate with the mailing list?
> 
> I suppose gitlab itself can send e-mails on CI pipeline fail.
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

