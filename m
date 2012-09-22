Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFVL9-00025G-My
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 19:26:12 +0000
Received: by bkcji2 with SMTP id ji2so2200085bkc.36
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 12:26:08 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
References: <1348328517.25235.5.camel@mars>
 <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 21:25:57 +0200
Message-ID: <1348341957.24868.6.camel@mars>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] net: add multiple nameserver support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, 2012-09-22 at 20:27 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:

> +
>  static int do_host(int argc, char *argv[])
>  {
>  	IPaddr_t ip;
> diff --git a/net/net.c b/net/net.c
> index 3ac098f..edadf51 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -677,7 +677,8 @@ static int net_init(void)
>  		NetRxPackets[i] = net_alloc_packet();
>  
>  	register_device(&net_device);
> -	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
> +	dev_add_param(&net_device, "nameserver0", NULL, NULL, 0);
> +	dev_add_param(&net_device, "nameserver1", NULL, NULL, 0);

What do you think about a function that checks if nameserver0/1 is
really an IP, like this:

+static int net_set_namesrv(struct device_d *dev, struct param_d *param, const char *val)
+{
+	IPaddr_t ip;
+
+	if (!val)
+		return -EINVAL;
+
+	if (string_to_ip(val, &ip))
+		return -EINVAL;
+
+	dev_param_set_generic(dev, param, val);
+
+	return 0;
+}
+
 static int net_init(void)
 {
 	int i;
@@ -677,7 +692,8 @@ static int net_init(void)
 		NetRxPackets[i] = net_alloc_packet();
 
 	register_device(&net_device);
-	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
+	dev_add_param(&net_device, "nameserver0", net_set_namesrv, NULL, 0);
+	dev_add_param(&net_device, "nameserver1", net_set_namesrv, NULL, 0);
 	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
 
 	return 0;
---

It has the benefit that you get an error message ("set parameter:
Invalid argument") if it's defined wrong.

Thanks,
 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
