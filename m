Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.a-ix.net ([2a03:4000:21:445::fe61:e52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJjNy-000240-9I
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 18:46:20 +0000
Received: from home.a-ix.net ([5.158.145.238] helo=[172.31.0.149])
 by mx0.a-ix.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <ml+barebox@moritz.augsburger.name>)
 id 1hJjNu-00042y-Hs
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 18:46:14 +0000
From: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Message-ID: <f3826771-06e5-faf2-978a-28feb453fd3e@augsburger.name>
Date: Thu, 25 Apr 2019 20:46:13 +0200
MIME-Version: 1.0
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: state/bootchoser and sdhci/sdhost switchover
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey,

I'm a bit clueless about using bootchooser/state (together with rauc) on 
raspberry pi.

Inside barebox itself, everything works fine. I defined a state backend 
inside the dt, and I can set/update/read values:

     state: state {
         magic = <0x4d433230>;
         compatible = "barebox,state";
         backend-type = "raw";
         backend = <&backend_state_sd>;
         backend-storage-type = "circular";
         backend-stridesize = <0x800>;
[...]
     };
&sdhci { // extended the original entry
         pinctrl-0 = <&emmc_gpio48>;
         no-sd;
         non-removable;
         status = "okay";
         partitions {
                 compatible = "fixed-partitions";
                 #size-cells = <1>;
                 #address-cells = <1>;
                 backend_state_sd: part@200000 {
                         label = "state_sd";
                         reg = <0x200000 0x200000>;
                 };
         };
};

Linux uses &sdhost, barebox switched to &sdhci in 
ed5d970c16d14aa24edc20b8a096f230a398f7be as it has no driver for the 
sdhost interface. barebox-state doesn't find the storage, as expected:

# barebox-state
of_get_devicepath: cannot find device from node /soc/mmc@7e300000
state: state failed to parse path to backend: No such device
unable to initialize state: Unknown error -19

I would need some way to switch the backend for the state variable to 
the sdhost interface when it is copied into the device tree used for 
booting - or any other good proposal how to deal with the problem.

Best regards
Moritz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
