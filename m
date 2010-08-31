Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OqIl4-0002Bc-7k
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 04:47:42 +0000
Received: by wwb24 with SMTP id 24so3960364wwb.18
	for <barebox@lists.infradead.org>; Mon, 30 Aug 2010 21:47:40 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 31 Aug 2010 10:17:40 +0530
Message-ID: <AANLkTimqR7T24m3NSz5+tBje7CrtUHLwVJ8khJ=wg9iL@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1152064142=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox as first stage bootloader
To: barebox@lists.infradead.org

--===============1152064142==
Content-Type: multipart/alternative; boundary=001636832feaef4866048f1747ae

--001636832feaef4866048f1747ae
Content-Type: text/plain; charset=ISO-8859-1

Hi

Is it possible to use barebox as a first stage boot loader replacing
"nandflash_at91sam9263ek.bin"?

I tried to put barebox.bin onto 0x0 in Nand flash using sam-ba, but sam-ba
complains about huge file size.

warm regards

Nataraj

--001636832feaef4866048f1747ae
Content-Type: text/html; charset=ISO-8859-1

Hi <br><br>Is it possible to use barebox as a first stage boot loader replacing &quot;nandflash_at91sam9263ek.bin&quot;?<br><br>I tried to put barebox.bin onto 0x0 in Nand flash using sam-ba, but sam-ba complains about huge file size.<br>
<br>warm regards<br><br>Nataraj<br>

--001636832feaef4866048f1747ae--


--===============1152064142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1152064142==--
