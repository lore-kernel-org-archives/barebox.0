Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zkf5l-0000Ue-Vo
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 21:20:43 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-6-git-send-email-sebastian.hesselbarth@gmail.com>
 <87612fam4r.fsf@belgarion.home> <5618165B.2070500@gmail.com>
Date: Fri, 09 Oct 2015 23:14:57 +0200
In-Reply-To: <5618165B.2070500@gmail.com> (Sebastian Hesselbarth's message of
 "Fri, 09 Oct 2015 21:32:43 +0200")
Message-ID: <87wpuv9226.fsf@belgarion.home>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/17] mtd: nand_mrvl_nfc: Remove keep_config
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> On 09.10.2015 21:16, Robert Jarzmik wrote:
> Anyway, I am fine with keeping the keep-config parsing and remove
> the property on some boards with using the barebox's dts overlays.
Excellent.

>
>> It can be assumed that for stacked NAND, the ROM code's timings are more
>> accurate than the generic ones, hence keep_config.
>
> There is more issues here: Currently the binding of the nand
> _controller_ also contains properties of the nand _device_, e.g.
> mtd partitions are direct sub-nodes of the controller.
>
> For the long run, i.e. including Linux rework, we should have
> nand device sub-nodes, e.g.
I'm not really a devicetree expert, so I'll let others answer on that one. Yet I
find your example quite logical, having the controller and then devices on it.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
